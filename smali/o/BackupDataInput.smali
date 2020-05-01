.class public abstract Lo/BackupDataInput;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CHI",
        "LD:Lo/BackupDataInput<",
        "TCHI",
        "LD;",
        "TTranscodeType;>;TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private e:Lo/AndroidTestBaseUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AndroidTestBaseUpdater<",
            "-TTranscodeType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lo/UriMatcher;->a()Lo/AndroidTestBaseUpdater;

    move-result-object v0

    iput-object v0, p0, Lo/BackupDataInput;->e:Lo/AndroidTestBaseUpdater;

    return-void
.end method

.method private e()Lo/BackupDataInput;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method final a()Lo/AndroidTestBaseUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/AndroidTestBaseUpdater<",
            "-TTranscodeType;>;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lo/BackupDataInput;->e:Lo/AndroidTestBaseUpdater;

    return-object v0
.end method

.method public final a(Lo/AndroidTestBaseUpdater;)Lo/BackupDataInput;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AndroidTestBaseUpdater<",
            "-TTranscodeType;>;)TCHI",
            "LD;"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AndroidTestBaseUpdater;

    iput-object p1, p0, Lo/BackupDataInput;->e:Lo/AndroidTestBaseUpdater;

    .line 71
    invoke-direct {p0}, Lo/BackupDataInput;->e()Lo/BackupDataInput;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lo/BackupDataInput;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCHI",
            "LD;"
        }
    .end annotation

    .line 85
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BackupDataInput;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lo/BackupDataInput;->b()Lo/BackupDataInput;

    move-result-object v0

    return-object v0
.end method
