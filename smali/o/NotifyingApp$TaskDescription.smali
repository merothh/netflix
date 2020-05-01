.class public final Lo/NotifyingApp$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/NotifyingApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/NotifyingApp$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Z)Lo/NotifyingApp;
    .locals 3

    .line 21
    new-instance v0, Lo/NotifyingApp;

    invoke-direct {v0}, Lo/NotifyingApp;-><init>()V

    .line 22
    sget v1, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->I:I

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lo/NotifyingApp;->setStyle(II)V

    .line 24
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "showCVVTrustMessage"

    .line 25
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    invoke-virtual {v0, v1}, Lo/NotifyingApp;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
