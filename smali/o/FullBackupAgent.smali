.class public final Lo/FullBackupAgent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FileBackupHelperBase;


# instance fields
.field private final a:Lo/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Spanned<",
            "Lo/FullBackupDataOutput<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lo/ConfigurationInfo;

    invoke-direct {v0}, Lo/ConfigurationInfo;-><init>()V

    iput-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    return-void
.end method

.method private static a(Lo/FullBackupDataOutput;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FullBackupDataOutput<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1, p2}, Lo/FullBackupDataOutput;->a(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public a(Lo/FullBackupDataOutput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FullBackupDataOutput<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lo/FullBackupDataOutput;->c()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public c(Ljava/security/MessageDigest;)V
    .locals 3

    const/4 v0, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v1}, Lo/Spanned;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v1, v0}, Lo/Spanned;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/FullBackupDataOutput;

    .line 50
    iget-object v2, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v2, v0}, Lo/Spanned;->d(I)Ljava/lang/Object;

    move-result-object v2

    .line 51
    invoke-static {v1, v2, p1}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lo/FullBackupAgent;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    iget-object p1, p1, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->a(Lo/TextWatcher;)V

    return-void
.end method

.method public e(Lo/FullBackupDataOutput;Ljava/lang/Object;)Lo/FullBackupAgent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/FullBackupDataOutput<",
            "TT;>;TT;)",
            "Lo/FullBackupAgent;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0, p1, p2}, Lo/Spanned;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lo/FullBackupAgent;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lo/FullBackupAgent;

    .line 36
    iget-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    iget-object p1, p1, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0, p1}, Lo/Spanned;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0}, Lo/Spanned;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/FullBackupAgent;->a:Lo/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
