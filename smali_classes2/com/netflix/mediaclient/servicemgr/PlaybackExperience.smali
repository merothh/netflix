.class public interface abstract Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;
    }
.end annotation


# static fields
.field public static final d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lo/zw;

    const-string v1, "Default"

    invoke-direct {v0, v1}, Lo/zw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;->d:Lcom/netflix/mediaclient/servicemgr/PlaybackExperience;

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Lo/Aq;
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method

.method public abstract i()Lcom/netflix/mediaclient/servicemgr/PlaybackExperience$SubtitleExperience;
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method
