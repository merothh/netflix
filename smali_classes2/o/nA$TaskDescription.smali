.class public Lo/nA$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field private dataHeader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cip"
    .end annotation
.end field

.field private dnsLookup:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dns"
    .end annotation
.end field

.field private duration:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field

.field private errorHeader:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "err"
    .end annotation
.end field

.field private httpStatusCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sc"
    .end annotation
.end field

.field private ip:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ip"
    .end annotation
.end field

.field private payloadSize:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sz"
    .end annotation
.end field

.field private platformSpecificErrorCode:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pf_code"
    .end annotation
.end field

.field private platformSpecificErrorString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pf_err"
    .end annotation
.end field

.field private tcpConnect:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tcp"
    .end annotation
.end field

.field private timeToFirstByte:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ttfb"
    .end annotation
.end field

.field private tlsConnect:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tls"
    .end annotation
.end field

.field private via:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "via"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0

    .line 184
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/nA$TaskDescription;->payloadSize:Ljava/lang/Long;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lo/nA$TaskDescription;->dataHeader:Ljava/lang/String;

    return-void
.end method

.method b()Z
    .locals 2

    .line 207
    iget-object v0, p0, Lo/nA$TaskDescription;->httpStatusCode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/nA$TaskDescription;->httpStatusCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lo/nA$TaskDescription;->payloadSize:Ljava/lang/Long;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lo/nA$TaskDescription;->errorHeader:Ljava/lang/String;

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lo/nA$TaskDescription;->ip:Ljava/lang/String;

    return-void
.end method

.method e(Lo/D;)V
    .locals 6

    .line 167
    invoke-interface {p1}, Lo/D;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    invoke-interface {p1}, Lo/D;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/nA$TaskDescription;->tcpConnect:Ljava/lang/Long;

    .line 168
    invoke-interface {p1}, Lo/D;->g()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-interface {p1}, Lo/D;->g()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/nA$TaskDescription;->tlsConnect:Ljava/lang/Long;

    .line 169
    invoke-interface {p1}, Lo/D;->e()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    invoke-interface {p1}, Lo/D;->e()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lo/nA$TaskDescription;->dnsLookup:Ljava/lang/Long;

    .line 170
    invoke-interface {p1}, Lo/D;->j()J

    move-result-wide v0

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_3

    invoke-interface {p1}, Lo/D;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_3
    move-object v0, v4

    :goto_3
    iput-object v0, p0, Lo/nA$TaskDescription;->timeToFirstByte:Ljava/lang/Long;

    .line 171
    invoke-interface {p1}, Lo/D;->f()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_4

    invoke-interface {p1}, Lo/D;->f()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_4

    :cond_4
    move-object v0, v4

    :goto_4
    iput-object v0, p0, Lo/nA$TaskDescription;->duration:Ljava/lang/Long;

    .line 172
    invoke-interface {p1}, Lo/D;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/nA$TaskDescription;->via:Ljava/lang/String;

    .line 173
    invoke-interface {p1}, Lo/D;->d()Z

    move-result v0

    if-nez v0, :cond_5

    .line 175
    invoke-interface {p1}, Lo/D;->h()I

    move-result v0

    invoke-static {v0}, Lo/zr;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/nA$TaskDescription;->httpStatusCode:Ljava/lang/Integer;

    goto :goto_5

    .line 177
    :cond_5
    invoke-interface {p1}, Lo/D;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lo/nA$TaskDescription;->httpStatusCode:Ljava/lang/Integer;

    .line 179
    :goto_5
    invoke-interface {p1}, Lo/D;->h()I

    move-result v0

    if-ltz v0, :cond_6

    invoke-interface {p1}, Lo/D;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_6
    iput-object v4, p0, Lo/nA$TaskDescription;->platformSpecificErrorCode:Ljava/lang/Integer;

    .line 180
    invoke-interface {p1}, Lo/D;->m()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/nA$TaskDescription;->platformSpecificErrorString:Ljava/lang/String;

    return-void
.end method
