.class public Lcom/airbnb/lottie/model/layer/Layer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/Layer$MatteType;,
        Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/AnyRes;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lo/DESedeKeySpec;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field private final e:J

.field private final f:I

.field private final g:Lo/TypeConverter;

.field private final h:J

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/lang/String;

.field private final k:F

.field private final l:F

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:Lo/RectEvaluator;

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final r:Lo/ValueAnimator;

.field private final s:I

.field private final t:Lo/LayoutTransition;

.field private final w:Z

.field private final y:Lcom/airbnb/lottie/model/layer/Layer$MatteType;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/DESedeKeySpec;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lo/TypeConverter;IIIFFIILo/RectEvaluator;Lo/ValueAnimator;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lo/LayoutTransition;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/AnyRes;",
            ">;",
            "Lo/DESedeKeySpec;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;",
            "Lo/TypeConverter;",
            "IIIFFII",
            "Lo/RectEvaluator;",
            "Lo/ValueAnimator;",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
            "Lo/LayoutTransition;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 66
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->a:Ljava/util/List;

    move-object v1, p2

    .line 67
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->b:Lo/DESedeKeySpec;

    move-object v1, p3

    .line 68
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->c:Ljava/lang/String;

    move-wide v1, p4

    .line 69
    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->e:J

    move-object v1, p6

    .line 70
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->d:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-wide v1, p7

    .line 71
    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->h:J

    move-object v1, p9

    .line 72
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->j:Ljava/lang/String;

    move-object v1, p10

    .line 73
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->i:Ljava/util/List;

    move-object v1, p11

    .line 74
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->g:Lo/TypeConverter;

    move v1, p12

    .line 75
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->f:I

    move/from16 v1, p13

    .line 76
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->n:I

    move/from16 v1, p14

    .line 77
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->o:I

    move/from16 v1, p15

    .line 78
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->l:F

    move/from16 v1, p16

    .line 79
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->k:F

    move/from16 v1, p17

    .line 80
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->m:I

    move/from16 v1, p18

    .line 81
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->s:I

    move-object/from16 v1, p19

    .line 82
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->p:Lo/RectEvaluator;

    move-object/from16 v1, p20

    .line 83
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->r:Lo/ValueAnimator;

    move-object/from16 v1, p21

    .line 84
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->q:Ljava/util/List;

    move-object/from16 v1, p22

    .line 85
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->y:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-object/from16 v1, p23

    .line 86
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->t:Lo/LayoutTransition;

    move/from16 v1, p24

    .line 87
    iput-boolean v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->w:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/ActivityView<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->q:Ljava/util/List;

    return-object v0
.end method

.method public b()F
    .locals 2

    .line 99
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->k:F

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/Layer;->b:Lo/DESedeKeySpec;

    invoke-virtual {v1}, Lo/DESedeKeySpec;->n()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public c()F
    .locals 1

    .line 95
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->l:F

    return v0
.end method

.method public d()J
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->e:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->b:Lo/DESedeKeySpec;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->m()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lo/DESedeKeySpec;->a(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->b:Lo/DESedeKeySpec;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lo/DESedeKeySpec;->a(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->b:Lo/DESedeKeySpec;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer;->m()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lo/DESedeKeySpec;->a(J)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v2

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->t()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->t()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->q()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/layer/Layer;->p()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e()Lo/DESedeKeySpec;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->b:Lo/DESedeKeySpec;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->i:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->m:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->s:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->j:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/AnyRes;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->a:Ljava/util/List;

    return-object v0
.end method

.method public l()Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->d:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    return-object v0
.end method

.method public m()J
    .locals 2

    .line 139
    iget-wide v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->h:J

    return-wide v0
.end method

.method public n()Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->y:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    return-object v0
.end method

.method public o()Lo/TypeConverter;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->g:Lo/TypeConverter;

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->o:I

    return v0
.end method

.method public q()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->n:I

    return v0
.end method

.method public r()Lo/RectEvaluator;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->p:Lo/RectEvaluator;

    return-object v0
.end method

.method public s()Lo/ValueAnimator;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->r:Lo/ValueAnimator;

    return-object v0
.end method

.method public t()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 175
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/Layer;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->w:Z

    return v0
.end method

.method public w()Lo/LayoutTransition;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/Layer;->t:Lo/LayoutTransition;

    return-object v0
.end method
