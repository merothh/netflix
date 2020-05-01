.class Lo/JB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final e:Lo/Jw;


# direct methods
.method public constructor <init>(Lo/Jw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/JB;->e:Lo/Jw;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/JB;->e:Lo/Jw;

    invoke-static {v0, p1}, Lo/Jw;->e(Lo/Jw;Landroid/view/View;)V

    return-void
.end method
