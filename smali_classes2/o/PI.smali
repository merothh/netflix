.class public final Lo/PI;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PI$Application;
    }
.end annotation


# static fields
.field public static final e:Lo/PI$Application;


# instance fields
.field private final a:Lo/Pi;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Pp;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lo/Pn;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/Po;",
            ">;"
        }
    .end annotation
.end field

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/PI$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/PI$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/PI;->e:Lo/PI$Application;

    return-void
.end method

.method public constructor <init>(Lo/Pn;Ljava/util/List;Ljava/util/List;Lo/Pi;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Pn;",
            "Ljava/util/List<",
            "Lo/Po;",
            ">;",
            "Ljava/util/List<",
            "Lo/Pp;",
            ">;",
            "Lo/Pi;",
            "I)V"
        }
    .end annotation

    const-string v0, "headlineUIModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/PI;->c:Lo/Pn;

    iput-object p2, p0, Lo/PI;->d:Ljava/util/List;

    iput-object p3, p0, Lo/PI;->b:Ljava/util/List;

    iput-object p4, p0, Lo/PI;->a:Lo/Pi;

    iput p5, p0, Lo/PI;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lo/Pn;Ljava/util/List;Ljava/util/List;Lo/Pi;IILo/amc;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 15
    invoke-direct/range {v0 .. v5}, Lo/PI;-><init>(Lo/Pn;Ljava/util/List;Ljava/util/List;Lo/Pi;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 15
    iget v0, p0, Lo/PI;->f:I

    return v0
.end method

.method public final b()Lo/Pn;
    .locals 1

    .line 11
    iget-object v0, p0, Lo/PI;->c:Lo/Pn;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Po;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lo/PI;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    .line 15
    iput p1, p0, Lo/PI;->f:I

    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/Pp;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/PI;->b:Ljava/util/List;

    return-object v0
.end method

.method public final e()Lo/Pi;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/PI;->a:Lo/Pi;

    return-object v0
.end method
