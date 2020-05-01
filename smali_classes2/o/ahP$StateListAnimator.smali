.class public Lo/ahP$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ahP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:Lo/ahL;

.field public final d:Ljava/lang/Long;

.field public final e:Z

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo/ahX;

.field public final h:Lo/aie;

.field public final i:Lo/ahA;

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/Long;ZZLo/ahL;Ljava/util/Set;Lo/ahA;Lo/aie;Lo/ahX;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "ZZ",
            "Lo/ahL;",
            "Ljava/util/Set<",
            "Lo/ahz;",
            ">;",
            "Lo/ahA;",
            "Lo/aie;",
            "Lo/ahX;",
            "Ljava/util/Set<",
            "Lo/ahV;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-wide p1, p0, Lo/ahP$StateListAnimator;->b:J

    .line 182
    iput-object p3, p0, Lo/ahP$StateListAnimator;->d:Ljava/lang/Long;

    .line 183
    iput-boolean p4, p0, Lo/ahP$StateListAnimator;->a:Z

    .line 184
    iput-boolean p5, p0, Lo/ahP$StateListAnimator;->e:Z

    .line 185
    iput-object p6, p0, Lo/ahP$StateListAnimator;->c:Lo/ahL;

    .line 186
    iput-object p7, p0, Lo/ahP$StateListAnimator;->f:Ljava/util/Set;

    .line 187
    iput-object p8, p0, Lo/ahP$StateListAnimator;->i:Lo/ahA;

    .line 188
    iput-object p9, p0, Lo/ahP$StateListAnimator;->h:Lo/aie;

    .line 189
    iput-object p10, p0, Lo/ahP$StateListAnimator;->g:Lo/ahX;

    .line 190
    iput-object p11, p0, Lo/ahP$StateListAnimator;->j:Ljava/util/Set;

    return-void
.end method
