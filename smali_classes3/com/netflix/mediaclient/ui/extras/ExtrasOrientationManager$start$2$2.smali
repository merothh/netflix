.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GL;->a(Lcom/netflix/mediaclient/ui/extras/ExtrasFeedFragment;Lo/GK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/GY;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lo/GY;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 110
    check-cast p1, Lo/GY$ActionBar$Activity;

    .line 111
    sget-object v0, Lo/GL;->d:Lo/GL$Activity;

    check-cast v0, Lo/MessagePdu;

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p1}, Lo/GY$ActionBar$Activity;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 115
    sget-object p1, Lo/GL;->d:Lo/GL$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 116
    new-instance p1, Lcom/netflix/cl/model/event/session/command/EnterFullscreenCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/EnterFullscreenCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 122
    :cond_0
    sget-object p1, Lo/GL;->d:Lo/GL$Activity;

    check-cast p1, Lo/MessagePdu;

    .line 123
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ExitFullscreenCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ExitFullscreenCommand;-><init>()V

    check-cast p1, Lcom/netflix/cl/model/event/session/command/Command;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 124
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setRequestedOrientation(I)V

    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.ui.extras.events.ExtrasEvent.ItemEvent.FullscreenToggle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    check-cast p1, Lo/GY;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/extras/ExtrasOrientationManager$start$2$2;->a(Lo/GY;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
