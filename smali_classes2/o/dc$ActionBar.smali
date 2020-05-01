.class public Lo/dc$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private b:[B

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iput-object p1, p0, Lo/dc$ActionBar;->e:Ljava/lang/String;

    .line 227
    invoke-static {p1}, Lo/ads;->e(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lo/dc$ActionBar;->b:[B

    .line 228
    invoke-direct {p0}, Lo/dc$ActionBar;->a()V

    return-void

    .line 224
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Key Set ID can not be empty!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lo/dc$ActionBar;->b:[B

    .line 234
    invoke-direct {p0}, Lo/dc$ActionBar;->a()V

    .line 236
    invoke-static {p1}, Lo/ads;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/dc$ActionBar;->e:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    .line 257
    iget-object v0, p0, Lo/dc$ActionBar;->b:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    if-eqz v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key Set ID can not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lo/dc$ActionBar;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()[B
    .locals 1

    .line 254
    iget-object v0, p0, Lo/dc$ActionBar;->b:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyId{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/dc$ActionBar;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
