.class public final Lo/Wo$Activity;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Wo;->d(Lo/UK$TaskDescription;Lo/hW;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/AK;

.field final synthetic b:Lo/hW;

.field final synthetic c:Lo/UK$TaskDescription;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

.field final synthetic e:Lo/Wo;


# direct methods
.method constructor <init>(Lo/AK;Lo/Wo;Lo/hW;Lo/UK$TaskDescription;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 0

    iput-object p1, p0, Lo/Wo$Activity;->a:Lo/AK;

    iput-object p2, p0, Lo/Wo$Activity;->e:Lo/Wo;

    iput-object p3, p0, Lo/Wo$Activity;->b:Lo/hW;

    iput-object p4, p0, Lo/Wo$Activity;->c:Lo/UK$TaskDescription;

    iput-object p5, p0, Lo/Wo$Activity;->d:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    .line 118
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 7

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lo/Wo$Activity;->c:Lo/UK$TaskDescription;

    iget-object p2, p0, Lo/Wo$Activity;->a:Lo/AK;

    const-string v0, "playable"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lo/AK;->P()I

    move-result p2

    invoke-virtual {p1, p2}, Lo/UK$TaskDescription;->d(I)V

    .line 121
    iget-object p1, p0, Lo/Wo$Activity;->b:Lo/hW;

    .line 122
    new-instance p2, Lo/KeyChainProtectionParams;

    iget-object v1, p0, Lo/Wo$Activity;->a:Lo/AK;

    invoke-static {v1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lo/KeyChainProtectionParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/amc;)V

    check-cast p2, Lo/SettingsValidators;

    new-instance v0, Lo/Wo$ActionBar;

    iget-object v1, p0, Lo/Wo$Activity;->e:Lo/Wo;

    iget-object v2, p0, Lo/Wo$Activity;->c:Lo/UK$TaskDescription;

    iget-object v3, p0, Lo/Wo$Activity;->d:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    invoke-direct {v0, v1, v2, v3}, Lo/Wo$ActionBar;-><init>(Lo/Wo;Lo/UK$TaskDescription;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    check-cast v0, Lo/ci;

    .line 121
    invoke-interface {p1, p2, v0}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    return-void
.end method
