.class public final Lo/Dd$Application;
.super Lo/PendingIntent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Dd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Application"
.end annotation


# instance fields
.field final synthetic b:Lo/Dd;


# direct methods
.method public constructor <init>(Lo/Dd;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lo/Dd$Application;->b:Lo/Dd;

    .line 183
    new-instance p1, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->I:I

    invoke-direct {p1, p2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lo/PendingIntent;-><init>(Landroid/content/Context;)V

    return-void
.end method
