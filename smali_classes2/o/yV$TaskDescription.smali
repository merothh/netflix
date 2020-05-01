.class Lo/yV$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$ActionBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/yV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/linphone/core/LinphoneCallParams;

.field c:Ljava/lang/String;

.field d:Lorg/linphone/core/LinphoneCall;

.field e:Z

.field g:I

.field private j:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/linphone/core/LinphoneCall;)V
    .locals 1

    .line 1065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->c:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    iput-object v0, p0, Lo/yV$TaskDescription;->j:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    const/4 v0, 0x0

    .line 1060
    iput-boolean v0, p0, Lo/yV$TaskDescription;->e:Z

    .line 1066
    iput-object p1, p0, Lo/yV$TaskDescription;->a:Ljava/lang/String;

    .line 1067
    iput-object p2, p0, Lo/yV$TaskDescription;->d:Lorg/linphone/core/LinphoneCall;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1101
    iget-object v0, p0, Lo/yV$TaskDescription;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1093
    iput-boolean v0, p0, Lo/yV$TaskDescription;->e:Z

    return-void
.end method

.method c()Lorg/linphone/core/LinphoneCall;
    .locals 1

    .line 1071
    iget-object v0, p0, Lo/yV$TaskDescription;->d:Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public d(Ljava/lang/String;I)V
    .locals 0

    .line 1109
    iput-object p1, p0, Lo/yV$TaskDescription;->c:Ljava/lang/String;

    .line 1110
    iput p2, p0, Lo/yV$TaskDescription;->g:I

    return-void
.end method

.method public d(Lorg/linphone/core/LinphoneCallParams;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lo/yV$TaskDescription;->b:Lorg/linphone/core/LinphoneCallParams;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1097
    iget-boolean v0, p0, Lo/yV$TaskDescription;->e:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1105
    iget v0, p0, Lo/yV$TaskDescription;->g:I

    return v0
.end method
