.class public final Lo/Tp$Application;
.super Landroid/app/Presentation;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Tp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic e:Lo/Tp;


# direct methods
.method public constructor <init>(Lo/Tp;Landroid/app/Activity;Landroid/view/Display;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/Display;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "display"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lo/Tp$Application;->e:Lo/Tp;

    .line 129
    check-cast p2, Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lo/Tp$Application;->setCancelable(Z)V

    .line 134
    invoke-virtual {p0, p1}, Lo/Tp$Application;->setCanceledOnTouchOutside(Z)V

    .line 135
    sget p1, Lcom/netflix/mediaclient/ui/R$Dialog;->cJ:I

    invoke-virtual {p0, p1}, Lo/Tp$Application;->setContentView(I)V

    return-void
.end method
