.class Lo/Lg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final c:Lo/Lk;


# direct methods
.method public constructor <init>(Lo/Lk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Lg;->c:Lo/Lk;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/Lg;->c:Lo/Lk;

    invoke-static {v0, p1}, Lo/Lk;->b(Lo/Lk;Landroid/view/View;)V

    return-void
.end method
