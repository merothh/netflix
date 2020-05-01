.class public Lo/DESedeKeySpec;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DESedeKeySpec$ActionBar;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lo/OAEPParameterSpec;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/BidirectionalTypeConverter;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ShortBufferException;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/KeyframeSet;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/Rect;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Params<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/TransformationMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TransformationMethod<",
            "Lo/ArgbEvaluator;",
            ">;"
        }
    .end annotation
.end field

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lo/OAEPParameterSpec;

    invoke-direct {v0}, Lo/OAEPParameterSpec;-><init>()V

    iput-object v0, p0, Lo/DESedeKeySpec;->b:Lo/OAEPParameterSpec;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/DESedeKeySpec;->d:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lo/DESedeKeySpec;->o:I

    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 141
    invoke-virtual {p0}, Lo/DESedeKeySpec;->n()F

    move-result v0

    iget v1, p0, Lo/DESedeKeySpec;->l:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method

.method public a(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1

    .line 133
    iget-object v0, p0, Lo/DESedeKeySpec;->i:Lo/Params;

    invoke-virtual {v0, p1, p2}, Lo/Params;->c(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/model/layer/Layer;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p1}, Lo/ActivityOptions;->d(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lo/DESedeKeySpec;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 124
    iget-object v0, p0, Lo/DESedeKeySpec;->b:Lo/OAEPParameterSpec;

    invoke-virtual {v0, p1}, Lo/OAEPParameterSpec;->b(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lo/DESedeKeySpec;->n:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 116
    iget v0, p0, Lo/DESedeKeySpec;->o:I

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lo/DESedeKeySpec;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public d()Landroid/graphics/Rect;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/DESedeKeySpec;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lo/KeyframeSet;
    .locals 3

    .line 182
    iget-object v0, p0, Lo/DESedeKeySpec;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    const/4 v0, 0x0

    .line 183
    :goto_0
    iget-object v1, p0, Lo/DESedeKeySpec;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Lo/DESedeKeySpec;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/KeyframeSet;

    .line 185
    invoke-virtual {v1, p1}, Lo/KeyframeSet;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 100
    iget v0, p0, Lo/DESedeKeySpec;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/DESedeKeySpec;->o:I

    return-void
.end method

.method public d(Landroid/graphics/Rect;FFFLjava/util/List;Lo/Params;Ljava/util/Map;Ljava/util/Map;Lo/TransformationMethod;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lo/Params<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ShortBufferException;",
            ">;",
            "Lo/TransformationMethod<",
            "Lo/ArgbEvaluator;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/BidirectionalTypeConverter;",
            ">;",
            "Ljava/util/List<",
            "Lo/KeyframeSet;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lo/DESedeKeySpec;->g:Landroid/graphics/Rect;

    .line 75
    iput p2, p0, Lo/DESedeKeySpec;->k:F

    .line 76
    iput p3, p0, Lo/DESedeKeySpec;->m:F

    .line 77
    iput p4, p0, Lo/DESedeKeySpec;->l:F

    .line 78
    iput-object p5, p0, Lo/DESedeKeySpec;->h:Ljava/util/List;

    .line 79
    iput-object p6, p0, Lo/DESedeKeySpec;->i:Lo/Params;

    .line 80
    iput-object p7, p0, Lo/DESedeKeySpec;->a:Ljava/util/Map;

    .line 81
    iput-object p8, p0, Lo/DESedeKeySpec;->e:Ljava/util/Map;

    .line 82
    iput-object p9, p0, Lo/DESedeKeySpec;->j:Lo/TransformationMethod;

    .line 83
    iput-object p10, p0, Lo/DESedeKeySpec;->c:Ljava/util/Map;

    .line 84
    iput-object p11, p0, Lo/DESedeKeySpec;->f:Ljava/util/List;

    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lo/DESedeKeySpec;->n:Z

    return-void
.end method

.method public e()Lo/OAEPParameterSpec;
    .locals 1

    .line 128
    iget-object v0, p0, Lo/DESedeKeySpec;->b:Lo/OAEPParameterSpec;

    return-object v0
.end method

.method public f()F
    .locals 1

    .line 146
    iget v0, p0, Lo/DESedeKeySpec;->k:F

    return v0
.end method

.method public g()F
    .locals 1

    .line 151
    iget v0, p0, Lo/DESedeKeySpec;->m:F

    return v0
.end method

.method public h()F
    .locals 1

    .line 155
    iget v0, p0, Lo/DESedeKeySpec;->l:F

    return v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lo/DESedeKeySpec;->h:Ljava/util/List;

    return-object v0
.end method

.method public j()Lo/TransformationMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TransformationMethod<",
            "Lo/ArgbEvaluator;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lo/DESedeKeySpec;->j:Lo/TransformationMethod;

    return-object v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/ShortBufferException;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lo/DESedeKeySpec;->e:Ljava/util/Map;

    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/BidirectionalTypeConverter;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/DESedeKeySpec;->c:Ljava/util/Map;

    return-object v0
.end method

.method public n()F
    .locals 2

    .line 201
    iget v0, p0, Lo/DESedeKeySpec;->m:F

    iget v1, p0, Lo/DESedeKeySpec;->k:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lo/DESedeKeySpec;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    const-string v3, "\t"

    .line 208
    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/model/layer/Layer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
