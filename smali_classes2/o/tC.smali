.class public Lo/tC;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lo/tC;->a:Ljava/lang/String;

    .line 17
    iput p2, p0, Lo/tC;->d:I

    .line 18
    iput-boolean p3, p0, Lo/tC;->b:Z

    .line 19
    iput-object p4, p0, Lo/tC;->e:Ljava/lang/String;

    return-void
.end method

.method public static c(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static d(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 27
    iget v0, p0, Lo/tC;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/tC;->a:Ljava/lang/String;

    return-object v0
.end method
