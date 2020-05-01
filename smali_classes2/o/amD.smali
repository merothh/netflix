.class public final Lo/amD;
.super Lo/amF;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/amD$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/amF;"
    }
.end annotation


# static fields
.field public static final b:Lo/amD$Application;

.field private static final e:Lo/amD;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/amD$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/amD$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/amD;->b:Lo/amD$Application;

    .line 58
    new-instance v0, Lo/amD;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/amD;-><init>(II)V

    sput-object v0, Lo/amD;->e:Lo/amD;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lo/amF;-><init>(III)V

    return-void
.end method

.method public static final synthetic i()Lo/amD;
    .locals 1

    .line 39
    sget-object v0, Lo/amD;->e:Lo/amD;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 45
    invoke-virtual {p0}, Lo/amD;->b()I

    move-result v0

    invoke-virtual {p0}, Lo/amD;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(I)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lo/amD;->b()I

    move-result v0

    if-gt v0, p1, :cond_0

    invoke-virtual {p0}, Lo/amD;->e()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 48
    instance-of v0, p1, Lo/amD;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/amD;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/amD;

    invoke-virtual {v0}, Lo/amD;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lo/amD;->b()I

    move-result v0

    check-cast p1, Lo/amD;

    invoke-virtual {p1}, Lo/amD;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lo/amD;->e()I

    move-result v0

    invoke-virtual {p1}, Lo/amD;->e()I

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lo/amD;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lo/amD;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 52
    invoke-virtual {p0}, Lo/amD;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/amD;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lo/amD;->e()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/amD;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/amD;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
