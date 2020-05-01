.class public final Lo/Yq$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Yq;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Yq;


# direct methods
.method constructor <init>(Lo/Yq;)V
    .locals 0

    iput-object p1, p0, Lo/Yq$Activity;->a:Lo/Yq;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lo/Yq$Activity;->a:Lo/Yq;

    invoke-static {v0}, Lo/Yq;->e(Lo/Yq;)Lo/Yz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Yz;->a(Lo/Am;)V

    .line 99
    iget-object v0, p0, Lo/Yq$Activity;->a:Lo/Yq;

    invoke-static {v0}, Lo/Yq;->a(Lo/Yq;)Lo/Yx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Yx;->c(Lo/Am;)V

    return-void
.end method
