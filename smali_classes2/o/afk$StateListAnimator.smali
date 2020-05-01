.class final Lo/afk$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackupHelperBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/afk$StateListAnimator;->d:Ljava/lang/String;

    .line 652
    iget-object p1, p0, Lo/afk$StateListAnimator;->d:Ljava/lang/String;

    sget-object v0, Lo/FileBackupHelperBase;->b:Ljava/nio/charset/Charset;

    const-string v1, "Key.CHARSET"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/afk$StateListAnimator;->e:[B

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(Ljava/security/MessageDigest;)V
    .locals 1

    const-string v0, "messageDigest"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lo/afk$StateListAnimator;->e:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 655
    move-object v0, p0

    check-cast v0, Lo/afk$StateListAnimator;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 658
    :cond_0
    instance-of v0, p1, Lo/afk$StateListAnimator;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lo/afk$StateListAnimator;->d:Ljava/lang/String;

    check-cast p1, Lo/afk$StateListAnimator;

    iget-object p1, p1, Lo/afk$StateListAnimator;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 665
    iget-object v0, p0, Lo/afk$StateListAnimator;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
