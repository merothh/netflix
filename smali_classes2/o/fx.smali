.class public final Lo/fx;
.super Lo/fC;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fx$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/fx$ActionBar;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fx$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fx$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/fx;->e:Lo/fx$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lo/fC;-><init>()V

    const-string v0, "9305"

    .line 21
    iput-object v0, p0, Lo/fx;->d:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persistent_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo/fx;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/fx;->a:Ljava/lang/String;

    const-string v0, "Android Lottie Systems Test"

    .line 23
    iput-object v0, p0, Lo/fx;->c:Ljava/lang/String;

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lo/fx;->b:I

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/fx;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lo/fx;->a:Ljava/lang/String;

    return-object v0
.end method
