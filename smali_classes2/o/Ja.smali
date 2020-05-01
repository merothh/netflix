.class public abstract Lo/Ja;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ja$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Ja$Application;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    const/16 v0, -0x1ae

    .line 54
    iput v0, p0, Lo/Ja;->n:I

    return-void
.end method

.method private final a(Lo/Ja$Application;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 6

    .line 101
    iget-object p2, p0, Lo/Ja;->b:Ljava/lang/String;

    .line 102
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_5

    .line 105
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object v0

    new-instance v3, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v3}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    invoke-virtual {v3, p2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v3

    sget-object v4, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v3, v4}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 107
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object v0

    sget-object v3, Lo/amj;->c:Lo/amj;

    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object v3

    invoke-virtual {v3}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->i:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "view.mainImageView.conte\u2026.accesibility_play_video)"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lo/Ja;->a:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v5, "title"

    invoke-static {v5}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    aput-object v4, v2, v1

    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/GridView;->setTag(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-static {p2}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/view/View;)V

    .line 112
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 162
    invoke-static {p2}, Lo/FilterWriter;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_4

    .line 113
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object p2

    invoke-virtual {p2}, Lo/GridView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "view.mainImageView.context"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p2}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 115
    invoke-static {p2}, Lo/adq;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    invoke-static {p2}, Lo/adq;->h(Landroid/content/Context;)I

    move-result p2

    int-to-double v1, p2

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double v1, v1, v3

    double-to-int p2, v1

    goto :goto_2

    :cond_3
    int-to-float p2, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float p2, p2, v1

    float-to-int p2, p2

    .line 120
    :goto_2
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object p1

    invoke-virtual {p1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 121
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 122
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 166
    :cond_4
    new-instance v0, Lo/Ja$Activity;

    invoke-direct {v0, p1}, Lo/Ja$Activity;-><init>(Lo/Ja$Application;)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_3
    return-void

    .line 103
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "image url is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lo/Ja;->b:Ljava/lang/String;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 60
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ch:I

    return v0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p2, Lo/Ja$Application;

    invoke-virtual {p0, p1, p2}, Lo/Ja;->b(ILo/Ja$Application;)V

    return-void
.end method

.method public b(ILo/Ja$Application;)V
    .locals 5

    const-string v0, "videoId"

    const-string v1, "view"

    invoke-static {p2, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    check-cast p2, Lo/TimeUnit;

    invoke-super {p0, p1, p2}, Lo/IntBinaryOperator;->c(ILo/TimeUnit;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 131
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const/4 p2, 0x0

    :try_start_0
    const-string v1, "requestId"

    .line 133
    iget-object v2, p0, Lo/Ja;->l:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "trackId"

    .line 134
    iget v2, p0, Lo/Ja;->n:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "row"

    .line 135
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "rank"

    .line 136
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    iget-object v1, p0, Lo/Ja;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "imageKey"

    .line 138
    iget-object v2, p0, Lo/Ja;->m:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 143
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KidsCharacterModel: Invalid videoId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/Ja;->c:Ljava/lang/String;

    if-nez v4, :cond_1

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/Throwable;

    .line 143
    invoke-interface {v2, v0, v1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 140
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KidsCharacterModel: Couldn\'t add tagTrackingInfo for videoId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lo/Ja;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    invoke-static {v0}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/Throwable;

    .line 140
    invoke-interface {v2, v0, v1}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    :goto_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->movieDetails:Lcom/netflix/cl/model/AppView;

    invoke-static {p1}, Lo/acG;->d(Lorg/json/JSONObject;)Lcom/netflix/cl/model/TrackingInfo;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->c(ZLcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/context/CLContext;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lo/Ja;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 34
    check-cast p2, Lo/Ja$Application;

    invoke-virtual {p0, p1, p2}, Lo/Ja;->b(ILo/Ja$Application;)V

    return-void
.end method

.method public c(Lo/Ja$Application;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    move-object v0, p1

    check-cast v0, Lo/TimeUnit;

    invoke-super {p0, v0}, Lo/IntBinaryOperator;->c(Lo/TimeUnit;)V

    .line 65
    invoke-virtual {p1}, Lo/Ja$Application;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 67
    invoke-direct {p0, p1, v0}, Lo/Ja;->a(Lo/Ja$Application;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 69
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/Ja;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/GridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 161
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 71
    invoke-static {v0}, Lo/adq;->j(Landroid/content/Context;)I

    move-result v0

    .line 72
    invoke-virtual {p1}, Lo/Ja$Application;->b()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1}, Lo/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    int-to-float v0, v0

    const/high16 v2, 0x3f100000    # 0.5625f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object v0, p0, Lo/Ja;->h:Ljava/lang/String;

    .line 75
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v4, "title"

    const/16 v5, 0x8

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {p1}, Lo/Ja$Application;->e()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/Ja;->a:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Lo/Ja$Application;->e()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {p1}, Lo/Ja$Application;->d()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lo/GridView;->setVisibility(I)V

    goto :goto_2

    .line 81
    :cond_3
    invoke-virtual {p1}, Lo/Ja$Application;->e()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {p1}, Lo/Ja$Application;->d()Lo/GridView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/GridView;->setVisibility(I)V

    .line 83
    invoke-virtual {p1}, Lo/Ja$Application;->d()Lo/GridView;

    move-result-object v1

    .line 84
    new-instance v6, Lcom/netflix/android/imageloader/api/ShowImageRequest;

    invoke-direct {v6}, Lcom/netflix/android/imageloader/api/ShowImageRequest;-><init>()V

    .line 85
    invoke-virtual {v6, v0}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->c(Ljava/lang/String;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->a(Z)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 87
    sget-object v2, Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;->c:Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;

    invoke-virtual {v0, v2}, Lcom/netflix/android/imageloader/api/ShowImageRequest;->e(Lcom/netflix/android/imageloader/api/ShowImageRequest$Priority;)Lcom/netflix/android/imageloader/api/ShowImageRequest;

    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Lo/GridView;->c(Lcom/netflix/android/imageloader/api/ShowImageRequest;)V

    .line 89
    invoke-virtual {p1}, Lo/Ja$Application;->d()Lo/GridView;

    move-result-object v0

    iget-object v1, p0, Lo/Ja;->a:Ljava/lang/String;

    if-nez v1, :cond_4

    invoke-static {v4}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_4
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/GridView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 92
    :goto_2
    invoke-virtual {p1}, Lo/Ja$Application;->c()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/Ja;->i:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p1}, Lo/Ja$Application;->c()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/Ja;->i:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    invoke-virtual {p1}, Lo/Ja$Application;->a()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lo/Ja;->f:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Lo/Ja$Application;->a()Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/Ja;->f:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    :goto_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 65
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 34
    check-cast p1, Lo/Ja$Application;

    invoke-virtual {p0, p1}, Lo/Ja;->c(Lo/Ja$Application;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 34
    check-cast p1, Lo/Ja$Application;

    invoke-virtual {p0, p1}, Lo/Ja;->c(Lo/Ja$Application;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lo/Ja;->i:Ljava/lang/String;

    return-void
.end method

.method public final e(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lo/Ja;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lo/Ja;->g:Ljava/lang/String;

    return-void
.end method

.method public final g_(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/Ja;->f:Ljava/lang/String;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/Ja;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h_(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lo/Ja;->m:Ljava/lang/String;

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/Ja;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/Ja;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/Ja;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .locals 1

    .line 44
    iget v0, p0, Lo/Ja;->j:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/Ja;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/Ja;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Landroid/view/View$OnClickListener;
    .locals 1

    .line 58
    iget-object v0, p0, Lo/Ja;->o:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/Ja;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .locals 1

    .line 54
    iget v0, p0, Lo/Ja;->n:I

    return v0
.end method
