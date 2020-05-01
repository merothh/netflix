.class public final Lo/RasterizerSpan;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/fragment/app/Fragment;Lo/InputChannel;)V
    .locals 8

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "planSelectionViewModel"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lo/InputChannel;->u()Lo/RelativeSizeSpan;

    move-result-object v0

    invoke-virtual {p2}, Lo/InputChannel;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/RelativeSizeSpan;->e(Ljava/lang/String;)Lo/GhostView;

    move-result-object v3

    .line 15
    invoke-virtual {p2}, Lo/InputChannel;->u()Lo/RelativeSizeSpan;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lo/GhostView;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lo/RelativeSizeSpan;->a(Ljava/lang/String;)Lo/GhostView;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 16
    invoke-virtual {p2}, Lo/InputChannel;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v2, "it"

    .line 18
    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lo/Serializable;->getSupportFragmentManager()Lo/SerializablePermission;

    move-result-object v0

    invoke-virtual {v0}, Lo/SerializablePermission;->e()Lo/UnsupportedEncodingException;

    move-result-object v0

    const-string v2, "it.supportFragmentManager.beginTransaction()"

    invoke-static {v0, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v2, Lo/MaskFilterSpan;->e:Lo/MaskFilterSpan$StateListAnimator;

    .line 22
    invoke-virtual {p2}, Lo/InputChannel;->m()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lo/GhostView;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lo/InputChannel;->u()Lo/RelativeSizeSpan;

    move-result-object v1

    invoke-virtual {v1}, Lo/RelativeSizeSpan;->e()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    move-object v5, v1

    .line 23
    invoke-virtual {p2}, Lo/InputChannel;->m()Z

    move-result v6

    .line 24
    invoke-virtual {p2}, Lo/InputChannel;->a()Z

    move-result v7

    .line 19
    invoke-virtual/range {v2 .. v7}, Lo/MaskFilterSpan$StateListAnimator;->d(Lo/GhostView;Lo/GhostView;Ljava/lang/String;ZZ)Lo/MaskFilterSpan;

    move-result-object p2

    const/4 v1, 0x1

    .line 26
    invoke-virtual {p2, p1, v1}, Lo/MaskFilterSpan;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    const-string p1, "upgradeOnUsDialog"

    .line 27
    invoke-virtual {p2, v0, p1}, Lo/MaskFilterSpan;->show(Lo/UnsupportedEncodingException;Ljava/lang/String;)I

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {p2}, Lo/InputChannel;->e()V

    :cond_4
    :goto_2
    return-void
.end method
