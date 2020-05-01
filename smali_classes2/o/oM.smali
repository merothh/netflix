.class public Lo/oM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/oL;
.implements Lo/oN$StateListAnimator;


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/oO;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/pM;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/oI;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/oN;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private final j:Lcom/netflix/mediaclient/servicemgr/IClientLogging;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/pM;Lcom/netflix/mediaclient/servicemgr/IClientLogging;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/oM;->e:Ljava/util/Queue;

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/oM;->a:Ljava/util/Queue;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/oM;->d:Ljava/util/Queue;

    .line 47
    iput-object p1, p0, Lo/oM;->i:Landroid/content/Context;

    .line 48
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/oM;->c:Landroid/os/Handler;

    .line 49
    iput-object p3, p0, Lo/oM;->b:Lo/pM;

    .line 50
    iput-object p4, p0, Lo/oM;->j:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/oM;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "nf_offlineLicenseMgr"

    const-string v2, "trySendingNextRequest %d %d %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 178
    iget-object v0, p0, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oN;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lo/oN;->a()V

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oO;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {v0}, Lo/oO;->a()V

    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lo/oM;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/oI;

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {v0}, Lo/oI;->a()V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lo/oL$StateListAnimator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sx;",
            ">;",
            "Lo/oL$StateListAnimator;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 244
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "nf_offlineLicenseMgr"

    const-string v2, "sendSyncActiveLicensesToServer %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    iget-object v0, p0, Lo/oM;->b:Lo/pM;

    new-instance v1, Lo/oM$5;

    invoke-direct {v1, p0, p2}, Lo/oM$5;-><init>(Lo/oM;Lo/oL$StateListAnimator;)V

    invoke-virtual {v0, p1, v1}, Lo/pM;->b(Ljava/util/List;Lo/pS;)V

    return-void
.end method

.method public a(Lo/or;[BLo/sx;Lo/oP;)V
    .locals 12

    move-object v8, p0

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/Object;

    .line 60
    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v10, "nf_offlineLicenseMgr"

    const-string v1, "requestNewLicense playableId=%s"

    invoke-static {v10, v1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 61
    new-instance v11, Lo/oN;

    iget-object v6, v8, Lo/oM;->b:Lo/pM;

    iget-object v7, v8, Lo/oM;->c:Landroid/os/Handler;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Lo/oN;-><init>(Lo/or;[BLo/sx;Lo/oP;Lo/oN$StateListAnimator;Lo/pM;Landroid/os/Handler;)V

    .line 64
    iget-object v0, v8, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v0, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, v8, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, v8, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v8, Lo/oM;->d:Ljava/util/Queue;

    .line 66
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-gt v0, v9, :cond_0

    .line 67
    invoke-virtual {v11}, Lo/oN;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "requestNewLicense serializing the request"

    .line 69
    invoke-static {v10, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/or;[B[BLo/sx;Lo/sx;Lo/oP;)V
    .locals 14

    move-object v11, p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshLicense playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "nf_offlineLicenseMgr"

    invoke-static {v12, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v13, Lo/oO;

    iget-object v8, v11, Lo/oM;->b:Lo/pM;

    iget-object v9, v11, Lo/oM;->c:Landroid/os/Handler;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, p0

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lo/oO;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineRefreshInvoke;Lo/or;[BLo/sx;Lo/sx;Lo/oP;Lo/oN$StateListAnimator;Lo/pM;Landroid/os/Handler;[B)V

    .line 87
    iget-object v0, v11, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v0, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v11, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, v11, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v11, Lo/oM;->d:Ljava/util/Queue;

    .line 89
    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 90
    invoke-virtual {v13}, Lo/oO;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "refreshLicense serializing the request"

    .line 92
    invoke-static {v12, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Lo/or;[BZLo/sx;Lo/oP;)V
    .locals 12

    move-object v9, p0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteLicense playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/or;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "nf_offlineLicenseMgr"

    invoke-static {v10, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v11, Lo/oI;

    iget-object v6, v9, Lo/oM;->b:Lo/pM;

    iget-object v8, v9, Lo/oM;->c:Landroid/os/Handler;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p5

    move-object v5, p0

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lo/oI;-><init>(Lo/or;[BZLo/oP;Lo/oN$StateListAnimator;Lo/pM;Lo/sx;Landroid/os/Handler;)V

    .line 109
    iget-object v0, v9, Lo/oM;->d:Ljava/util/Queue;

    invoke-interface {v0, v11}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, v9, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, v9, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v9, Lo/oM;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 111
    invoke-virtual {v11}, Lo/oI;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "deleteLicense serializing the request"

    .line 113
    invoke-static {v10, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Lo/oN;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    invoke-virtual {p1}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/oM;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lo/oM;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "nf_offlineLicenseMgr"

    const-string v2, "onLicenseRequestDone %s %s %d %d %d"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    instance-of v0, p1, Lo/oO;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lo/oM;->a:Ljava/util/Queue;

    .line 203
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 204
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oO;

    .line 206
    invoke-virtual {v2}, Lo/oO;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "onLicenseRequestDone removing from mRefreshLicenseRequestQueue"

    .line 207
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 212
    :cond_1
    instance-of v0, p1, Lo/oI;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lo/oM;->d:Ljava/util/Queue;

    .line 214
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oI;

    .line 217
    invoke-virtual {v2}, Lo/oI;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "onLicenseRequestDone removing from mDeactivateOfflineLicenseRequestQueue"

    .line 218
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lo/oM;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 225
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/oN;

    .line 227
    invoke-virtual {v2}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lo/oN;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "onLicenseRequestDone removing from mNewLicenseRequestQueue"

    .line 228
    invoke-static {v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 234
    :cond_5
    :goto_0
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 235
    iget-object v0, p0, Lo/oM;->j:Lcom/netflix/mediaclient/servicemgr/IClientLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IClientLogging;->l()Lo/zS;

    move-result-object v0

    iget-object v1, p1, Lo/oN;->d:Lo/or;

    invoke-static {v0, v1, p2}, Lo/oS;->b(Lo/zS;Lo/or;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 236
    iget-object v0, p0, Lo/oM;->i:Landroid/content/Context;

    invoke-virtual {p1}, Lo/oN;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lo/jV;->e(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 238
    :cond_6
    invoke-direct {p0}, Lo/oM;->e()V

    return-void
.end method
