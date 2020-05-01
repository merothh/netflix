.class public final Lo/go;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/go$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/go$StateListAnimator;


# instance fields
.field private bandersnatch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bandersnatch"
    .end annotation
.end field

.field private bandersnatchPreplay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bandersnatchPrePlay"
    .end annotation
.end field

.field private branchingTemplates:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "branchingtemplates"
    .end annotation
.end field

.field private branchingTemplatesPreplay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "branchingTemplatesPrePlay"
    .end annotation
.end field

.field private minecraft:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "minecraft"
    .end annotation
.end field

.field private youvswild:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "youvswild"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/go$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/go$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/go;->b:Lo/go$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method

.method public static final g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lo/go;->b:Lo/go$StateListAnimator;

    invoke-virtual {v0}, Lo/go$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/go;->youvswild:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lo/go;->branchingTemplates:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lo/go;->bandersnatch:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lo/go;->bandersnatchPreplay:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "interactive"

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lo/go;->minecraft:Z

    return v0
.end method
