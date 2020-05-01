.class public Lo/agJ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/agJ$Activity;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            ">;>;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/Mac;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/Cipher;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/KeyPairGenerator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/crypto/KeyAgreement;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lo/agJ$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->d:Ljava/lang/ThreadLocal;

    .line 49
    new-instance v0, Lo/agJ$Activity;

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->a:Ljava/lang/ThreadLocal;

    .line 52
    new-instance v0, Lo/agJ$Activity;

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->b:Ljava/lang/ThreadLocal;

    .line 55
    new-instance v0, Lo/agJ$Activity;

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->c:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Lo/agJ$Activity;

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->e:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, Lo/agJ$Activity;

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->i:Ljava/lang/ThreadLocal;

    .line 64
    new-instance v0, Lo/agJ$Activity;

    invoke-direct {v0, v1}, Lo/agJ$Activity;-><init>(Lo/agJ$5;)V

    sput-object v0, Lo/agJ;->h:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 2

    .line 146
    sget-object v0, Lo/agJ;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 147
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 149
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/Mac;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .line 97
    sget-object v0, Lo/agJ;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 98
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/lang/String;)Ljava/security/Signature;
    .locals 2

    .line 111
    sget-object v0, Lo/agJ;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 112
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-static {p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 114
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/Signature;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 2

    .line 79
    sget-object v0, Lo/agJ;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 80
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 82
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/Cipher;

    return-object p0
.end method
