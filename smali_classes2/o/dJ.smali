.class public final Lo/dJ;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dJ$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/dJ$TaskDescription;


# instance fields
.field private final a:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/dJ$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/dJ$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/dJ;->b:Lo/dJ$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "11529"

    .line 17
    iput-object v0, p0, Lo/dJ;->d:Ljava/lang/String;

    const-string v0, "Android Notifications Systems Test"

    .line 18
    iput-object v0, p0, Lo/dJ;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lo/dJ;->a:I

    return-void
.end method

.method public static final g()Z
    .locals 1

    sget-object v0, Lo/dJ;->b:Lo/dJ$TaskDescription;

    invoke-virtual {v0}, Lo/dJ$TaskDescription;->d()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/dJ;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistent_ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/dJ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
