.class public final Lo/aaW$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/aaW;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/aaW;


# direct methods
.method constructor <init>(Lo/aaW;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lo/aaW$Application;->a:Lo/aaW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "svcManager"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lo/aaW$Application;->a:Lo/aaW;

    invoke-virtual {v0}, Lo/aaW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.settings.PlaybackSpecificationFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "res"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lo/aaW$Application;->a:Lo/aaW;

    invoke-virtual {v0}, Lo/aaW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.settings.PlaybackSpecificationFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
