.class public final Lo/jE$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/jE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/jE;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic e:Lo/jE$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lo/jE$ActionBar;

    invoke-direct {v0}, Lo/jE$ActionBar;-><init>()V

    sput-object v0, Lo/jE$ActionBar;->e:Lo/jE$ActionBar;

    .line 14
    sget-object v0, Lo/jy;->a:Lo/jy;

    .line 13
    invoke-static {v0}, Lo/akz;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/jE$ActionBar;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lo/jE$ActionBar;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "ExternalCrashReporter"

    .line 12
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    const-string v2, "B2D6B06706E2B385723B4AB95E61ED3D5C3D720FF7B33F54AEC2868364B5BC6E8CF6FD80B23499A62CFB8060A4601E995DBAAC41832DDCCB96C72B70DFD8C0FA93F9CB304ABAF1EC35F3B77C93D68D0E405C39D952B41D29F547C714F91BE4AC1FC57A8B7FA728D1F0ADB50B1AB649AE207F42F016A58F70E519258DFD76CB5D41715EB79F10F1004E3A2CC15C90FD5329093AC4C4178E912496C3172C368C70258644C1B583EE211BD92F229577A78AEF87D7C98E3DF18DAB577CFDEFAC453466345597BB02EA6FE519BE45471DFD89EBC33739E82153C0806A5109D76CF5B2F3B0E012CC6CD77B521E844585D869F0CA527B79DBDB1BEA3E0EFD8085146E23"

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 39
    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "010001"

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const-string v1, "RSA"

    .line 40
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 41
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v0, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    check-cast v3, Ljava/security/spec/KeySpec;

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const-string v1, "RSA/ECB/PKCS1Padding"

    .line 43
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 44
    check-cast v0, Ljava/security/Key;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 46
    sget-object v0, Lo/anm;->b:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Lo/alv;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 47
    invoke-static {p1}, Lo/adl;->c([B)Ljava/lang/String;

    move-result-object p1

    .line 48
    move-object v0, p0

    check-cast v0, Lo/jE$ActionBar;

    check-cast v0, Lo/MessagePdu;

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/jE;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lo/jE$ActionBar;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 18
    sget-object v0, Lo/jE$ActionBar;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 89
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/jE;

    .line 19
    invoke-interface {v1, p1}, Lo/jE;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "userId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lo/jE$ActionBar;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 30
    :cond_0
    move-object v0, p0

    check-cast v0, Lo/jE$ActionBar;

    invoke-direct {v0, p1}, Lo/jE$ActionBar;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 31
    sget-object v1, Lo/jE$ActionBar;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
