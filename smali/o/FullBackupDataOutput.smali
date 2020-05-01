.class public final Lo/FullBackupDataOutput;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FullBackupDataOutput$StateListAnimator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:Lo/FullBackupDataOutput$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput$StateListAnimator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo/FullBackupDataOutput$StateListAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackupDataOutput$StateListAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lo/FullBackupDataOutput$4;

    invoke-direct {v0}, Lo/FullBackupDataOutput$4;-><init>()V

    sput-object v0, Lo/FullBackupDataOutput;->c:Lo/FullBackupDataOutput$StateListAnimator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lo/FullBackupDataOutput$StateListAnimator<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lo/FeatureInfo;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/FullBackupDataOutput;->a:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lo/FullBackupDataOutput;->d:Ljava/lang/Object;

    .line 96
    invoke-static {p3}, Lo/FeatureInfo;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/FullBackupDataOutput$StateListAnimator;

    iput-object p1, p0, Lo/FullBackupDataOutput;->b:Lo/FullBackupDataOutput$StateListAnimator;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lo/FullBackupDataOutput;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lo/FullBackupDataOutput<",
            "TT;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lo/FullBackupDataOutput;

    invoke-static {}, Lo/FullBackupDataOutput;->e()Lo/FullBackupDataOutput$StateListAnimator;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lo/FullBackupDataOutput;-><init>(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)V

    return-object v0
.end method

.method private b()[B
    .locals 2

    .line 120
    iget-object v0, p0, Lo/FullBackupDataOutput;->e:[B

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lo/FullBackupDataOutput;->a:Ljava/lang/String;

    sget-object v1, Lo/FileBackupHelperBase;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lo/FullBackupDataOutput;->e:[B

    .line 123
    :cond_0
    iget-object v0, p0, Lo/FullBackupDataOutput;->e:[B

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lo/FullBackupDataOutput;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lo/FullBackupDataOutput<",
            "TT;>;"
        }
    .end annotation

    .line 50
    new-instance v0, Lo/FullBackupDataOutput;

    invoke-static {}, Lo/FullBackupDataOutput;->e()Lo/FullBackupDataOutput$StateListAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Lo/FullBackupDataOutput;-><init>(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)Lo/FullBackupDataOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lo/FullBackupDataOutput$StateListAnimator<",
            "TT;>;)",
            "Lo/FullBackupDataOutput<",
            "TT;>;"
        }
    .end annotation

    .line 89
    new-instance v0, Lo/FullBackupDataOutput;

    invoke-direct {v0, p0, p1, p2}, Lo/FullBackupDataOutput;-><init>(Ljava/lang/String;Ljava/lang/Object;Lo/FullBackupDataOutput$StateListAnimator;)V

    return-object v0
.end method

.method private static e()Lo/FullBackupDataOutput$StateListAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/FullBackupDataOutput$StateListAnimator<",
            "TT;>;"
        }
    .end annotation

    .line 143
    sget-object v0, Lo/FullBackupDataOutput;->c:Lo/FullBackupDataOutput$StateListAnimator;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lo/FullBackupDataOutput;->b:Lo/FullBackupDataOutput$StateListAnimator;

    invoke-direct {p0}, Lo/FullBackupDataOutput;->b()[B

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lo/FullBackupDataOutput$StateListAnimator;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lo/FullBackupDataOutput;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 128
    instance-of v0, p1, Lo/FullBackupDataOutput;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lo/FullBackupDataOutput;

    .line 130
    iget-object v0, p0, Lo/FullBackupDataOutput;->a:Ljava/lang/String;

    iget-object p1, p1, Lo/FullBackupDataOutput;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 137
    iget-object v0, p0, Lo/FullBackupDataOutput;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FullBackupDataOutput;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
