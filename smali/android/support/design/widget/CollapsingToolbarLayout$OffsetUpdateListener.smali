.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 1246
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1251
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iput p2, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    .line 1253
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    move v1, v0

    .line 1255
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_1

    .line 1256
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1257
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 1258
    invoke-static {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v6

    .line 1260
    iget v7, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v7, :pswitch_data_0

    .line 1255
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v1, v2

    .line 1253
    goto :goto_0

    .line 1262
    :pswitch_0
    neg-int v0, p2

    iget-object v7, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 1263
    invoke-virtual {v7, v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v5

    invoke-static {v0, v2, v5}, Landroid/support/design/widget/MathUtils;->constrain(III)I

    move-result v0

    .line 1262
    invoke-virtual {v6, v0}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1266
    :pswitch_1
    neg-int v5, p2

    int-to-float v5, v5

    iget v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v0, v5

    .line 1267
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1266
    invoke-virtual {v6, v0}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    .line 1273
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 1275
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v0, v0, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    if-lez v1, :cond_2

    .line 1276
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1280
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 1282
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 1283
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 1282
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 1284
    return-void

    .line 1260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
