.class public interface abstract Lo/IvParameterSpec;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A:Ljava/lang/Float;

.field public static final B:[Ljava/lang/Integer;

.field public static final C:Landroid/graphics/ColorFilter;

.field public static final D:Ljava/lang/Float;

.field public static final a:Ljava/lang/Integer;

.field public static final b:Ljava/lang/Integer;

.field public static final c:Ljava/lang/Integer;

.field public static final d:Landroid/graphics/PointF;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Landroid/graphics/PointF;

.field public static final g:Landroid/graphics/PointF;

.field public static final h:Landroid/graphics/PointF;

.field public static final i:Ljava/lang/Float;

.field public static final j:Landroid/graphics/PointF;

.field public static final k:Lo/ActivityTransitionCoordinator;

.field public static final l:Ljava/lang/Float;

.field public static final m:Ljava/lang/Float;

.field public static final n:Ljava/lang/Float;

.field public static final o:Ljava/lang/Float;

.field public static final p:Ljava/lang/Float;

.field public static final q:Ljava/lang/Float;

.field public static final r:Ljava/lang/Float;

.field public static final s:Ljava/lang/Float;

.field public static final t:Ljava/lang/Float;

.field public static final u:Ljava/lang/Float;

.field public static final v:Ljava/lang/Float;

.field public static final w:Ljava/lang/Float;

.field public static final x:Ljava/lang/Float;

.field public static final y:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->e:Ljava/lang/Integer;

    const/4 v0, 0x2

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->b:Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->a:Ljava/lang/Integer;

    const/4 v0, 0x4

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->c:Ljava/lang/Integer;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/IvParameterSpec;->d:Landroid/graphics/PointF;

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/IvParameterSpec;->h:Landroid/graphics/PointF;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/IvParameterSpec;->f:Landroid/graphics/PointF;

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/IvParameterSpec;->g:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->i:Ljava/lang/Float;

    .line 79
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    sput-object v1, Lo/IvParameterSpec;->j:Landroid/graphics/PointF;

    .line 80
    new-instance v1, Lo/ActivityTransitionCoordinator;

    invoke-direct {v1}, Lo/ActivityTransitionCoordinator;-><init>()V

    sput-object v1, Lo/IvParameterSpec;->k:Lo/ActivityTransitionCoordinator;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    sput-object v1, Lo/IvParameterSpec;->n:Ljava/lang/Float;

    .line 84
    sput-object v0, Lo/IvParameterSpec;->l:Ljava/lang/Float;

    .line 86
    sput-object v0, Lo/IvParameterSpec;->m:Ljava/lang/Float;

    const/high16 v0, 0x40000000    # 2.0f

    .line 88
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->o:Ljava/lang/Float;

    const/high16 v0, 0x40400000    # 3.0f

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->s:Ljava/lang/Float;

    const/high16 v0, 0x40800000    # 4.0f

    .line 90
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->t:Ljava/lang/Float;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 91
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->r:Ljava/lang/Float;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 92
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->p:Ljava/lang/Float;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 94
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->q:Ljava/lang/Float;

    const/high16 v0, 0x41000000    # 8.0f

    .line 96
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->u:Ljava/lang/Float;

    const/high16 v0, 0x41100000    # 9.0f

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->v:Ljava/lang/Float;

    const/high16 v0, 0x41200000    # 10.0f

    .line 100
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->y:Ljava/lang/Float;

    const/high16 v0, 0x41300000    # 11.0f

    .line 102
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->x:Ljava/lang/Float;

    const/high16 v0, 0x41400000    # 12.0f

    .line 104
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->w:Ljava/lang/Float;

    .line 106
    sput-object v0, Lo/IvParameterSpec;->A:Ljava/lang/Float;

    const/high16 v0, 0x41500000    # 13.0f

    .line 108
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lo/IvParameterSpec;->D:Ljava/lang/Float;

    .line 110
    new-instance v0, Landroid/graphics/ColorFilter;

    invoke-direct {v0}, Landroid/graphics/ColorFilter;-><init>()V

    sput-object v0, Lo/IvParameterSpec;->C:Landroid/graphics/ColorFilter;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 112
    sput-object v0, Lo/IvParameterSpec;->B:[Ljava/lang/Integer;

    return-void
.end method
