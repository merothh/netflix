.class public Lo/Observable;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/facebook/imagepipeline/request/ImageRequest;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;

.field private final e:Lo/LegacyRequest;

.field private final f:J

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:J

.field private final k:I

.field private final l:Z

.field private final m:J

.field private final n:Ljava/lang/String;

.field private final o:J

.field private final p:I

.field private final q:I

.field private final r:J

.field private final s:I

.field private final t:J

.field private final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lo/LegacyRequest;JJJJJJJILjava/lang/String;ZIIIJJLjava/lang/String;)V
    .locals 3

    move-object v0, p0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 68
    iput-object v1, v0, Lo/Observable;->b:Ljava/lang/String;

    move-object v1, p2

    .line 69
    iput-object v1, v0, Lo/Observable;->c:Ljava/lang/String;

    move-object v1, p3

    .line 70
    iput-object v1, v0, Lo/Observable;->a:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p4

    .line 71
    iput-object v1, v0, Lo/Observable;->d:Ljava/lang/Object;

    move-object v1, p5

    .line 72
    iput-object v1, v0, Lo/Observable;->e:Lo/LegacyRequest;

    move-wide v1, p6

    .line 73
    iput-wide v1, v0, Lo/Observable;->h:J

    move-wide v1, p8

    .line 74
    iput-wide v1, v0, Lo/Observable;->j:J

    move-wide v1, p10

    .line 75
    iput-wide v1, v0, Lo/Observable;->g:J

    move-wide v1, p12

    .line 76
    iput-wide v1, v0, Lo/Observable;->f:J

    move-wide/from16 v1, p14

    .line 77
    iput-wide v1, v0, Lo/Observable;->i:J

    move-wide/from16 v1, p16

    .line 78
    iput-wide v1, v0, Lo/Observable;->o:J

    move-wide/from16 v1, p18

    .line 79
    iput-wide v1, v0, Lo/Observable;->m:J

    move/from16 v1, p20

    .line 80
    iput v1, v0, Lo/Observable;->k:I

    move-object/from16 v1, p21

    .line 81
    iput-object v1, v0, Lo/Observable;->n:Ljava/lang/String;

    move/from16 v1, p22

    .line 82
    iput-boolean v1, v0, Lo/Observable;->l:Z

    move/from16 v1, p23

    .line 83
    iput v1, v0, Lo/Observable;->p:I

    move/from16 v1, p24

    .line 84
    iput v1, v0, Lo/Observable;->s:I

    move/from16 v1, p25

    .line 85
    iput v1, v0, Lo/Observable;->q:I

    move-wide/from16 v1, p26

    .line 86
    iput-wide v1, v0, Lo/Observable;->r:J

    move-wide/from16 v1, p28

    .line 87
    iput-wide v1, v0, Lo/Observable;->t:J

    move-object/from16 v1, p30

    .line 88
    iput-object v1, v0, Lo/Observable;->u:Ljava/lang/String;

    return-void
.end method
