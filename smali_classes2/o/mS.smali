.class public final Lo/mS;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Lo/mS;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lo/mS;

    invoke-direct {v0}, Lo/mS;-><init>()V

    sput-object v0, Lo/mS;->d:Lo/mS;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lo/mR;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x37b57e67

    if-eq v2, v3, :cond_5

    if-eqz v2, :cond_4

    const v0, 0x2fb91e

    if-eq v2, v0, :cond_3

    const v0, 0x6761d4f

    if-eq v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "reset"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lo/mY;

    invoke-direct {p1}, Lo/mY;-><init>()V

    move-object v0, p1

    check-cast v0, Lo/mR;

    goto :goto_2

    :cond_3
    const-string v0, "exit"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lo/mU;

    invoke-direct {p1}, Lo/mU;-><init>()V

    move-object v0, p1

    check-cast v0, Lo/mR;

    goto :goto_2

    :cond_4
    const-string v2, ""

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_5
    const-string v0, "reload"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p1, Lo/mX;

    invoke-direct {p1}, Lo/mX;-><init>()V

    move-object v0, p1

    check-cast v0, Lo/mR;

    goto :goto_2

    .line 24
    :cond_6
    :goto_1
    new-instance v0, Lo/mW;

    invoke-direct {v0, p1}, Lo/mW;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/mR;

    :goto_2
    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lo/mR;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "deviceCommand"

    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lo/mS;->b(Ljava/lang/String;)Lo/mR;

    move-result-object p1

    return-object p1
.end method
