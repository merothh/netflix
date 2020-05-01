.class public abstract Lo/Ky;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ky$TaskDescription;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g()Lo/Ky$TaskDescription;
    .locals 1

    .line 36
    new-instance v0, Lo/JO$ActionBar;

    invoke-direct {v0}, Lo/JO$ActionBar;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method abstract b()Ljava/lang/String;
.end method

.method protected abstract c()Lo/Ky$TaskDescription;
.end method

.method public abstract d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lo/Ky;->c()Lo/Ky$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/Ky$TaskDescription;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky$TaskDescription;

    move-result-object p1

    invoke-virtual {p1}, Lo/Ky$TaskDescription;->e()Lo/Ky;

    move-result-object p1

    return-object p1
.end method

.method abstract e()I
.end method
