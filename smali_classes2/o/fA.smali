.class public final Lo/fA;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fA$ActionBar;
    }
.end annotation


# static fields
.field public static final a:Lo/fA$ActionBar;


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fA$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fA$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fA;->a:Lo/fA$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "9134"

    .line 14
    iput-object v0, p0, Lo/fA;->b:Ljava/lang/String;

    const-string v0, "Behavioral Targeting All Notifications"

    .line 15
    iput-object v0, p0, Lo/fA;->e:Ljava/lang/String;

    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lo/fA;->d:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lo/fA;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistent_ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/fA;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
