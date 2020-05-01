.class public final Lo/RingtonePreference;
.super Ljava/io/Reader;
.source ""


# instance fields
.field private a:I

.field private b:Z

.field private final d:I

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lo/RingtonePreference;->e:Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lo/RingtonePreference;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lo/RingtonePreference;->d:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lo/RingtonePreference;->b:Z

    return-void
.end method

.method public read([CII)I
    .locals 3

    const-string v0, "cbuf"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-boolean v0, p0, Lo/RingtonePreference;->b:Z

    if-nez v0, :cond_3

    .line 18
    iget v0, p0, Lo/RingtonePreference;->a:I

    iget v1, p0, Lo/RingtonePreference;->d:I

    if-lt v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sub-int v2, v1, v0

    if-lt v2, p3, :cond_1

    add-int v1, v0, p3

    .line 27
    :cond_1
    iget p3, p0, Lo/RingtonePreference;->a:I

    sub-int v0, v1, p3

    .line 28
    iget-object v2, p0, Lo/RingtonePreference;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p3, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 29
    iput v1, p0, Lo/RingtonePreference;->a:I

    move p1, v0

    :goto_0
    return p1

    .line 28
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Reader closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
