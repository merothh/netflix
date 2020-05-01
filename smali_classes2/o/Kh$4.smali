.class Lo/Kh$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/android/activity/NetflixActivity$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Kh;->e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Kh;

.field final synthetic c:I

.field final synthetic e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lo/Kh;Lcom/netflix/mediaclient/android/activity/NetflixActivity;I)V
    .locals 0

    .line 224
    iput-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iput-object p2, p0, Lo/Kh$4;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput p3, p0, Lo/Kh$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lo/Am;)V
    .locals 13

    .line 227
    iget-object v0, p0, Lo/Kh$4;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget v1, p0, Lo/Kh$4;->c:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lo/Kl$Activity;->d(Landroid/content/Context;II)Lo/PooledStringWriter;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object v1, v1, Lo/Kh;->b:Lo/KL;

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object v1, v1, Lo/Kh;->b:Lo/KL;

    invoke-virtual {v1}, Lo/KL;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    if-eqz p1, :cond_9

    .line 338
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    invoke-virtual {p1, v12}, Lo/EditText;->a(Z)V

    goto/16 :goto_4

    .line 231
    :cond_1
    :goto_0
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    invoke-static {v1}, Lo/Kh;->e(Lo/Kh;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "queue"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 232
    invoke-virtual {p1}, Lo/Am;->b()Lo/zI;

    move-result-object v1

    invoke-interface {v1}, Lo/zI;->d()Ljava/lang/String;

    move-result-object v6

    .line 233
    invoke-virtual {p1}, Lo/Am;->w()Lo/zG;

    move-result-object v1

    invoke-interface {v1, v3}, Lo/zG;->b(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 235
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    iput-object v5, v1, Lo/Kh;->f:Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 236
    invoke-static {}, Lo/KP;->d()Lo/KP;

    move-result-object v10

    .line 237
    new-instance v1, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v2, Lcom/netflix/cl/model/AppView;->browseTitlesGallery:Lcom/netflix/cl/model/AppView;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    if-eqz v6, :cond_2

    .line 239
    invoke-virtual {v1, v6}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    goto :goto_1

    .line 241
    :cond_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    const-string v3, "home lolomoId is null"

    invoke-interface {v2, v3}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    :goto_1
    move-object v11, v1

    .line 243
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    new-instance v2, Lo/Ka;

    iget-object v3, v1, Lo/Kh;->j:Lo/ParcelableParcel;

    .line 244
    invoke-virtual {v3}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 249
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListPos()I

    move-result v9

    move-object v3, v2

    move-object v7, p1

    move-object v8, v0

    invoke-direct/range {v3 .. v11}, Lo/Ka;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Ljava/lang/String;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    iput-object v2, v1, Lo/Kh;->b:Lo/KL;

    goto/16 :goto_3

    .line 254
    :cond_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missing queue (lolomo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' activity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Kh$4;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\') "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "My List gallery requested but not loaded in cmp"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lo/Kh$4;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const-class v0, Lo/Lo;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Lo;

    if-eqz p1, :cond_4

    .line 261
    invoke-static {p1}, Lo/adk;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 263
    invoke-virtual {p1}, Lo/Lo;->finish()V

    goto :goto_2

    .line 266
    :cond_4
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    invoke-static {p1, v12}, Lo/Kh;->d(Lo/Kh;Z)V

    .line 267
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    if-eqz p1, :cond_5

    .line 268
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lo/ParcelableParcel;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    invoke-virtual {p1, v2}, Lo/EditText;->b(Z)V

    :cond_5
    :goto_2
    return-void

    .line 275
    :cond_6
    new-instance p1, Lo/KM;

    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object v1, v1, Lo/Kh;->i:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lo/KM;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v11, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    sget-object v1, Lcom/netflix/cl/model/AppView;->browseTitlesGallery:Lcom/netflix/cl/model/AppView;

    invoke-direct {v11, v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;-><init>(Lcom/netflix/cl/model/AppView;)V

    .line 277
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    invoke-static {v1}, Lo/Kh;->a(Lo/Kh;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 280
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    new-instance v2, Lo/Kf;

    iget-object v3, v1, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {v3}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lo/Kh$4;->b:Lo/Kh;

    invoke-virtual {v3}, Lo/Kh;->v()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v5

    iget-object v3, p0, Lo/Kh$4;->b:Lo/Kh;

    .line 281
    invoke-static {v3}, Lo/Kh;->a(Lo/Kh;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v6

    iget-object v3, p0, Lo/Kh$4;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v7

    iget-object v3, p0, Lo/Kh$4;->b:Lo/Kh;

    .line 282
    invoke-virtual {v3}, Lo/Kh;->v()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListPos()I

    move-result v9

    move-object v3, v2

    move-object v8, v0

    move-object v10, p1

    invoke-direct/range {v3 .. v11}, Lo/Kf;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    iput-object v2, v1, Lo/Kh;->b:Lo/KL;

    goto :goto_3

    .line 284
    :cond_7
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    invoke-virtual {v1}, Lo/Kh;->v()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v5

    .line 285
    iget-object v1, p0, Lo/Kh$4;->b:Lo/Kh;

    new-instance v2, Lo/JZ;

    iget-object v3, v1, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {v3}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v3, p0, Lo/Kh$4;->e:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 286
    invoke-virtual {v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v6

    .line 287
    invoke-interface {v5}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListPos()I

    move-result v8

    invoke-virtual {v11, v5}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v10

    move-object v3, v2

    move-object v7, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v10}, Lo/JZ;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lo/Am;Lo/PooledStringWriter;ILo/KN;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    iput-object v2, v1, Lo/Kh;->b:Lo/KL;

    .line 290
    :goto_3
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    if-eqz p1, :cond_8

    .line 291
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->k:Lo/EditText;

    invoke-virtual {p1, v12}, Lo/EditText;->a(Z)V

    .line 294
    :cond_8
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    invoke-static {p1}, Lo/Kh;->d(Lo/Kh;)V

    .line 295
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->b:Lo/KL;

    if-eqz p1, :cond_9

    .line 296
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->b:Lo/KL;

    new-instance v1, Lo/Kh$4$3;

    invoke-direct {v1, p0}, Lo/Kh$4$3;-><init>(Lo/Kh$4;)V

    invoke-virtual {p1, v1}, Lo/KL;->a(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$TaskDescription;)V

    .line 331
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->b:Lo/KL;

    invoke-virtual {p1}, Lo/KL;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 333
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lo/ParcelableParcel;->setVisibility(I)V

    .line 342
    :cond_9
    :goto_4
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {v0}, Lo/PooledStringWriter;->i()I

    move-result v1

    invoke-static {p1, v12, v1}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 343
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    const/4 v1, 0x2

    invoke-virtual {v0}, Lo/PooledStringWriter;->i()I

    move-result v0

    invoke-static {p1, v1, v0}, Lo/RemoteException;->e(Landroid/view/View;II)V

    .line 344
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->j:Lo/ParcelableParcel;

    iget-object v0, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object v0, v0, Lo/Kh;->b:Lo/KL;

    invoke-virtual {p1, v0}, Lo/ParcelableParcel;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Activity;)V

    .line 345
    iget-object p1, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object p1, p1, Lo/Kh;->b:Lo/KL;

    iget-object v0, p0, Lo/Kh$4;->b:Lo/Kh;

    iget-object v0, v0, Lo/Kh;->j:Lo/ParcelableParcel;

    invoke-virtual {v0}, Lo/ParcelableParcel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/KL;->e(Landroid/content/Context;)V

    return-void
.end method
