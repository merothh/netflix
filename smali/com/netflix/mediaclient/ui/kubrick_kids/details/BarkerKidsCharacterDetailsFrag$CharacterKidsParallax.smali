.class Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;
.super Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;
.source "BarkerKidsCharacterDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 194
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    .line 195
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$200(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v1

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$400(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getBackgroundImage()Landroid/widget/ImageView;

    move-result-object v5

    aput-object v5, v3, v4

    iget-boolean v4, p1, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v4, :cond_1

    .line 196
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$500(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/view/ViewGroup;

    move-result-object v4

    :goto_0
    iget-boolean v5, p1, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v5, :cond_2

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$600(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    :goto_1
    move-object v0, p0

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;-><init>(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 198
    iget-boolean v0, p1, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-nez v0, :cond_0

    .line 199
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 201
    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    .line 196
    goto :goto_0

    :cond_2
    move-object v5, v0

    goto :goto_1
.end method

.method private getBackroundResource(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->this$0:Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;->access$800(Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 233
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 218
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 227
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e007e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected setInitialToolbarColor()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/KidsParallax;->setInitialToolbarColor()V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/kubrick_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;->getBackroundResource(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_0
    return-void
.end method
