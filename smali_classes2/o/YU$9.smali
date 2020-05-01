.class Lo/YU$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YU;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const-string p1, "ProfileDetailsActivity"

    const-string v0, "Save button was triggered"

    .line 357
    invoke-static {p1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->t(Lo/YU;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->c(Lo/YU;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 362
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/AddProfile;

    iget-object v1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v1}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0

    .line 364
    :cond_0
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/EditProfile;

    iget-object v1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v1}, Lo/YU;->n(Lo/YU;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v2}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    sget-object v1, Lo/LegacyErrorStrings;->V:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p1, v0, v1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->k(Lo/YU;)V

    .line 371
    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->s(Lo/YU;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 373
    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->c(Lo/YU;)Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_2

    .line 375
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->d(Lo/YU;)Lo/Am;

    move-result-object v1

    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->r(Lo/YU;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->j(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->p(Lo/YU;)Lo/zU;

    move-result-object v6

    move-object v2, v3

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lo/Am;->b(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Lo/zU;)V

    .line 376
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1, v8}, Lo/YU;->d(Lo/YU;Z)Z

    goto/16 :goto_7

    .line 377
    :cond_2
    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 379
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->j(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v5, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    .line 380
    invoke-static {p1}, Lo/YU;->j(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;->getName()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    .line 383
    :goto_1
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->isKidsProfile()Z

    move-result p1

    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->r(Lo/YU;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v0}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->isDefaultKidsProfile()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    if-eq p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_9

    .line 384
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->r(Lo/YU;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->isDefaultKidsProfile()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v4, p1

    goto :goto_5

    :cond_9
    move-object v4, v1

    .line 387
    :goto_5
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->d(Lo/YU;)Lo/Am;

    move-result-object v1

    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object p1

    invoke-interface {p1}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->p(Lo/YU;)Lo/zU;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lo/Am;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Lo/zU;)V

    .line 388
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1, v8}, Lo/YU;->d(Lo/YU;Z)Z

    goto :goto_7

    :cond_a
    const-string v0, "Weird use case: profile edit was started, but input profile is null"

    .line 390
    invoke-static {p1, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1}, Lo/YU;->c(Lo/YU;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 393
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/AddProfile;

    iget-object v2, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v2}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netflix/cl/model/event/session/action/AddProfile;-><init>(Lcom/netflix/cl/model/ProfileSettings;)V

    invoke-virtual {p1, v0, v1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_6

    .line 395
    :cond_b
    sget-object p1, Lo/YV;->b:Lo/YV;

    new-instance v0, Lcom/netflix/cl/model/event/session/action/EditProfile;

    iget-object v2, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v2}, Lo/YU;->n(Lo/YU;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {v3}, Lo/YU;->g(Lo/YU;)Lcom/netflix/cl/model/ProfileSettings;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/netflix/cl/model/event/session/action/EditProfile;-><init>(Ljava/lang/String;Lcom/netflix/cl/model/ProfileSettings;)V

    invoke-virtual {p1, v0, v1}, Lo/YV;->d(Lcom/netflix/cl/model/event/session/action/Action;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 397
    :goto_6
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-virtual {p1}, Lo/YU;->finish()V

    .line 399
    :goto_7
    iget-object p1, p0, Lo/YU$9;->b:Lo/YU;

    invoke-static {p1, v8, v8}, Lo/YU;->d(Lo/YU;ZZ)V

    return-void
.end method
