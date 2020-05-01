.class public abstract Lo/FU;
.super Lo/TimeUnit;
.source ""


# instance fields
.field public d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lo/TimeUnit;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final d(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lo/FU;->d:Landroid/view/View;

    .line 16
    invoke-virtual {p0, p1}, Lo/FU;->c(Landroid/view/View;)V

    return-void
.end method

.method public final g()Landroid/view/View;
    .locals 2

    .line 12
    iget-object v0, p0, Lo/FU;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "itemView"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
