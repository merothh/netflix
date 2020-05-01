.class public Lo/DW;
.super Lo/Ds;
.source ""


# instance fields
.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netflix/mediaclient/ui/details/BackStackData;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private h:Lo/Am;

.field private i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lo/Ds;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/DW;->d:Ljava/util/ArrayList;

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object v0, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-void
.end method

.method private b(Landroid/os/Parcelable;)V
    .locals 3

    .line 206
    iget-object v0, p0, Lo/DW;->h:Lo/Am;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lo/DW;->a()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo/DW;->a(Landroidx/fragment/app/Fragment;)V

    .line 210
    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lo/DY;

    invoke-virtual {v1, p1}, Lo/DY;->c(Landroid/os/Parcelable;)V

    .line 211
    invoke-virtual {p0}, Lo/DW;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v1

    invoke-virtual {v1}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p1}, Lo/DW;->c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V

    .line 214
    sget p1, Lcom/netflix/mediaclient/ui/R$Fragment;->ph:I

    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v2, "primary"

    invoke-virtual {v1, p1, v0, v2}, Lo/UnsupportedEncodingException;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Lo/UnsupportedEncodingException;

    .line 215
    invoke-virtual {v1}, Lo/UnsupportedEncodingException;->b()I

    .line 216
    invoke-virtual {p0}, Lo/DW;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object p1

    invoke-virtual {p1}, Lo/SerializablePermission;->b()Z

    .line 218
    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lo/zT;

    iget-object v0, p0, Lo/DW;->h:Lo/Am;

    sget-object v1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {p1, v0, v1}, Lo/zT;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 5

    .line 172
    invoke-virtual {p0}, Lo/DW;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lo/DT;

    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Lo/DW;->h()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lo/DT;

    invoke-interface {v0}, Lo/DT;->d()Landroid/os/Parcelable;

    move-result-object v0

    .line 178
    :cond_0
    new-instance v1, Lcom/netflix/mediaclient/ui/details/BackStackData;

    invoke-virtual {p0}, Lo/DW;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lo/DW;->o()Lcom/netflix/mediaclient/servicemgr/PlayContext;

    move-result-object v3

    iget-object v4, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/netflix/mediaclient/ui/details/BackStackData;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/PlayContext;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lo/DW;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    invoke-virtual {p0}, Lo/DW;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/DW;->c(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lo/DW;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_video_type_string_value"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    iput-object v0, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 189
    iget-object v0, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v1, :cond_2

    .line 190
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside VideoVideoDetailsActivity: Unsupported videoType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 193
    :cond_2
    invoke-virtual {p0}, Lo/DW;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_play_context"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 194
    invoke-virtual {p0, v0}, Lo/DW;->d(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 195
    invoke-virtual {p0}, Lo/DW;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 196
    invoke-virtual {p0}, Lo/DW;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_action_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v0, v1}, Lo/DW;->d(Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;Ljava/lang/String;)V

    return-void
.end method

.method public static x()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity;",
            ">;"
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/DU;

    goto :goto_0

    :cond_0
    const-class v0, Lo/DW;

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a()Landroidx/fragment/app/Fragment;
    .locals 5

    .line 124
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    .line 126
    invoke-static {}, Lo/ady;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 130
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPY-18272: VideoDetailsActivity: getVideoId() inside createPrimaryFrag() is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/DW;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p0}, Lo/DW;->s()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lo/DW;->a:I

    .line 135
    invoke-virtual {p0}, Lo/DW;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {p0}, Lo/DW;->r()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v0, v1, v2, v3}, Lo/DY;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/DY;

    move-result-object v0

    return-object v0

    .line 140
    :cond_1
    invoke-static {}, Lo/eG;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lo/FN;->u:Lo/FN$Application;

    iget-object v1, p0, Lo/DW;->e:Ljava/lang/String;

    iget v2, p0, Lo/DW;->a:I

    .line 144
    invoke-virtual {p0}, Lo/DW;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/DW;->c:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/FN$Application;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/Eo;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Lo/DW;->s()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lo/DW;->a:I

    .line 151
    invoke-virtual {p0}, Lo/DW;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p0}, Lo/DW;->r()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v0, v1, v2, v3}, Lo/Eo;->c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lo/Eo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 223
    new-instance v0, Lo/afV;

    invoke-static {}, Lo/adq;->d()Z

    move-result v1

    invoke-direct {v0, v1}, Lo/afV;-><init>(Z)V

    const v1, 0x1010054

    .line 224
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->b(Landroid/app/Activity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/afV;->a(I)Lo/CharsetDecoder;

    .line 225
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$LoaderManager;->a:I

    invoke-static {v1, v2}, Lo/adk;->c(Landroid/content/Context;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lo/afV;->setDuration(J)Lo/CharsetDecoder;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 227
    new-instance v1, Lo/CharBuffer;

    invoke-direct {v1}, Lo/CharBuffer;-><init>()V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 230
    :cond_2
    new-instance v0, Lo/CharBuffer;

    invoke-direct {v0}, Lo/CharBuffer;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public handleBackPressed()Z
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Back pressed, backStack size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/DW;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDetailsActivity"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lo/DW;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 89
    iget-object v0, p0, Lo/DW;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/BackStackData;

    .line 93
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/BackStackData;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lo/DW;->c(Ljava/lang/String;)V

    .line 94
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/BackStackData;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->create(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    iput-object v1, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 95
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/details/BackStackData;->a:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-virtual {p0, v1}, Lo/DW;->d(Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    .line 96
    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/BackStackData;->e:Landroid/os/Parcelable;

    invoke-direct {p0, v0}, Lo/DW;->b(Landroid/os/Parcelable;)V

    return v2

    :cond_0
    const-string v0, "No more videos in back stack, finishing..."

    .line 100
    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .line 168
    iget-object v0, p0, Lo/DW;->i:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "extra_back_stack"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 58
    iget-object v2, p0, Lo/DW;->d:Ljava/util/ArrayList;

    check-cast v1, Lcom/netflix/mediaclient/ui/details/BackStackData;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-direct {p0}, Lo/DW;->w()V

    .line 62
    invoke-super {p0, p1}, Lo/Ds;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 106
    invoke-super {p0, p1, p2}, Lo/Ds;->onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 107
    iput-object p1, p0, Lo/DW;->h:Lo/Am;

    .line 109
    iget-boolean p2, p0, Lo/DW;->f:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lo/DW;->b(Landroid/os/Parcelable;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lo/DW;->f:Z

    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .line 118
    invoke-super {p0, p1, p2}, Lo/Ds;->onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lo/DW;->h:Lo/Am;

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "VideoDetailsActivity"

    const-string v1, "onNewIntent: "

    .line 67
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 68
    invoke-super {p0, p1}, Lo/Ds;->onNewIntent(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0, p1}, Lo/DW;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-direct {p0}, Lo/DW;->w()V

    .line 73
    iget-object p1, p0, Lo/DW;->h:Lo/Am;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 76
    iput-boolean p1, p0, Lo/DW;->f:Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lo/DW;->j()V

    const/4 p1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lo/DW;->b(Landroid/os/Parcelable;)V

    .line 81
    invoke-virtual {p0}, Lo/DW;->n()V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 161
    invoke-super {p0, p1}, Lo/Ds;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    iget-object v0, p0, Lo/DW;->d:Ljava/util/ArrayList;

    const-string v1, "extra_back_stack"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
