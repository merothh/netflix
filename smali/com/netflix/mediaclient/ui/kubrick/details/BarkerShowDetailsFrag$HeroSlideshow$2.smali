.class Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x7d0

    .line 1152
    invoke-virtual {p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 1166
    :goto_0
    return-void

    .line 1157
    :cond_0
    invoke-virtual {p3, p1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setTag(Ljava/lang/Object;)V

    .line 1158
    invoke-virtual {p3, p2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1159
    invoke-virtual {p3}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1160
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1161
    invoke-virtual {p4}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1162
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1164
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4102(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;Z)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4402(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;I)I

    .line 1171
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "HeroSlideshow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_0
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1142
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4000(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4100(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4200(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 1149
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4300(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->this$1:Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;->access$4200(Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow;)Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v1

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/netflix/mediaclient/ui/kubrick/details/BarkerShowDetailsFrag$HeroSlideshow$2;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    goto :goto_0
.end method
