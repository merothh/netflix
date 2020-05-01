.class public final Lo/ap;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ap$Activity;
    }
.end annotation


# static fields
.field public static final e:Lo/ap$Activity;

.field private static final g:Ljava/text/DecimalFormatSymbols;

.field private static final h:Ljava/text/DecimalFormat;


# instance fields
.field private a:F

.field private b:F

.field private c:J

.field private d:F

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lo/ap$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ap$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/ap;->e:Lo/ap$Activity;

    .line 22
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    sput-object v0, Lo/ap;->g:Ljava/text/DecimalFormatSymbols;

    .line 23
    new-instance v0, Ljava/text/DecimalFormat;

    sget-object v1, Lo/ap;->g:Ljava/text/DecimalFormatSymbols;

    const-string v2, "#.##"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lo/ap;->h:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ap;->i:Ljava/lang/String;

    .line 42
    sget-object p1, Lo/amb;->e:Lo/amb;

    invoke-virtual {p1}, Lo/amb;->c()F

    move-result p1

    iput p1, p0, Lo/ap;->d:F

    .line 44
    sget-object p1, Lo/amb;->e:Lo/amb;

    invoke-virtual {p1}, Lo/amb;->a()F

    move-result p1

    iput p1, p0, Lo/ap;->b:F

    return-void
.end method

.method public static final synthetic e()Ljava/text/DecimalFormat;
    .locals 1

    .line 14
    sget-object v0, Lo/ap;->h:Ljava/text/DecimalFormat;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Lo/ap;->a:F

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lo/ap;->c:J

    .line 78
    sget-object v0, Lo/amb;->e:Lo/amb;

    invoke-virtual {v0}, Lo/amb;->c()F

    move-result v0

    iput v0, p0, Lo/ap;->d:F

    .line 79
    sget-object v0, Lo/amb;->e:Lo/amb;

    invoke-virtual {v0}, Lo/amb;->a()F

    move-result v0

    iput v0, p0, Lo/ap;->b:F

    return-void
.end method

.method public final b()Ljava/lang/Float;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lo/ap;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget v0, p0, Lo/ap;->a:F

    iget-wide v1, p0, Lo/ap;->c:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public b(F)V
    .locals 4

    const/4 v0, 0x0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 51
    iget-wide v0, p0, Lo/ap;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/ap;->c:J

    .line 53
    iget v0, p0, Lo/ap;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lo/ap;->a:F

    .line 55
    iget v0, p0, Lo/ap;->d:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 56
    iput p1, p0, Lo/ap;->d:F

    .line 59
    :cond_0
    iget v0, p0, Lo/ap;->b:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 60
    iput p1, p0, Lo/ap;->b:F

    :cond_1
    return-void
.end method

.method public d()Z
    .locals 5

    .line 69
    iget-wide v0, p0, Lo/ap;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 84
    invoke-virtual {p0}, Lo/ap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lo/ap;->e:Lo/ap$Activity;

    invoke-virtual {p0}, Lo/ap;->b()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ap$Activity;->d(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "avg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    sget-object v1, Lo/ap;->e:Lo/ap$Activity;

    iget v2, p0, Lo/ap;->d:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ap$Activity;->d(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    sget-object v1, Lo/ap;->e:Lo/ap$Activity;

    iget v2, p0, Lo/ap;->b:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ap$Activity;->d(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
