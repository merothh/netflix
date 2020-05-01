.class Lo/Km;
.super Ljava/lang/Object;

# interfaces
.implements Lo/PooledStringWriter$Activity;


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Km;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public c()Landroidx/recyclerview/widget/RecyclerView$PendingIntent;
    .locals 1

    iget-object v0, p0, Lo/Km;->e:Landroid/content/Context;

    invoke-static {v0}, Lo/Kl$Activity;->e(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$PendingIntent;

    move-result-object v0

    return-object v0
.end method
