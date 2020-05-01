.class final Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/UpdateEngine;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lo/IJ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Application;->d:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 35
    check-cast p1, Lo/IJ;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Application;->e(Lo/IJ;)V

    return-void
.end method

.method public final e(Lo/IJ;)V
    .locals 1

    .line 49
    instance-of v0, p1, Lo/IJ$TaskDescription;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$Application;->d:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    check-cast p1, Lo/IJ$TaskDescription;

    invoke-virtual {p1}, Lo/IJ$TaskDescription;->e()Lo/IJ$ActionBar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->setData(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
