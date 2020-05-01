.class Lo/uj$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field public final a:Z

.field public final b:Lo/wU;

.field public final c:Z

.field public final d:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field public final e:Lo/uj$Activity;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSpec;Lo/wU;ZZLo/uj$Activity;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lo/uj$StateListAnimator;->d:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 230
    iput-object p2, p0, Lo/uj$StateListAnimator;->b:Lo/wU;

    .line 231
    iput-object p5, p0, Lo/uj$StateListAnimator;->e:Lo/uj$Activity;

    .line 232
    iput-boolean p3, p0, Lo/uj$StateListAnimator;->a:Z

    .line 233
    iput-boolean p4, p0, Lo/uj$StateListAnimator;->c:Z

    return-void
.end method
