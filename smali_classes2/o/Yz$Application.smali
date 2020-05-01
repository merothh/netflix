.class final Lo/Yz$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yz;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Yz;


# direct methods
.method constructor <init>(Lo/Yz;)V
    .locals 0

    iput-object p1, p0, Lo/Yz$Application;->a:Lo/Yz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lo/Yz$Application;->a:Lo/Yz;

    sget-object v0, Lo/YB$Activity;->b:Lo/YB$Activity;

    invoke-virtual {p1, v0}, Lo/Yz;->e(Ljava/lang/Object;)V

    .line 243
    iget-object p1, p0, Lo/Yz$Application;->a:Lo/Yz;

    invoke-static {p1}, Lo/Yz;->e(Lo/Yz;)Lo/alB;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/alB;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/akj;

    :cond_0
    return-void
.end method
