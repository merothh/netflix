.class public final Lo/fI;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fI$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/fI$TaskDescription;


# instance fields
.field private final a:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fI$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fI$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/fI;->b:Lo/fI$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "9140"

    .line 13
    iput-object v0, p0, Lo/fI;->e:Ljava/lang/String;

    const-string v0, "Behavioral Triggered Notifications: Watched Trailer, Not Watched"

    .line 14
    iput-object v0, p0, Lo/fI;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 15
    iput v0, p0, Lo/fI;->a:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lo/fI;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistent_ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/fI;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method