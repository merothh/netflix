.class public final Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HD;->d(Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alN<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/servicemgr/PlayContext;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/HD;

.field final synthetic d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;


# direct methods
.method public constructor <init>(Lo/HD;Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;->b:Lo/HD;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;->d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 4

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playContext"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;->b:Lo/HD;

    invoke-virtual {v0}, Lo/HD;->h()Lo/UpdateEngine;

    move-result-object v0

    .line 87
    new-instance v1, Lo/GY$PictureInPictureParams;

    .line 89
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;->d:Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;

    .line 91
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;->b:Lo/HD;

    invoke-virtual {v3}, Lo/HD;->y()Ljava/lang/Integer;

    move-result-object v3

    .line 87
    invoke-direct {v1, p1, p2, v2, v3}, Lo/GY$PictureInPictureParams;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Lcom/netflix/falkor/task/MutateRemindMeQueueTask$Mutation;Ljava/lang/Integer;)V

    check-cast v1, Lo/VintfObject;

    .line 98
    const-class p1, Lo/GY;

    invoke-virtual {v0, p1, v1}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/extras/models/RemindMeButtonModel$sendToggleEvent$1;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
