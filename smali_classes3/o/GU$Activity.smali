.class public final Lo/GU$Activity;
.super Lo/GP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GU;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic c:Lo/GU;

.field final synthetic f:Lo/GW;


# direct methods
.method constructor <init>(Lo/GU;Ljava/util/List;Lo/GW;ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Lo/GW;",
            "I",
            "Ljava/util/List;",
            "Lo/EncryptedPrivateKeyInfo;",
            "Lo/CipherSpi;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lo/GU$Activity;->c:Lo/GU;

    iput-object p2, p0, Lo/GU$Activity;->a:Ljava/util/List;

    iput-object p3, p0, Lo/GU$Activity;->f:Lo/GW;

    move-object v0, p0

    move v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lo/GP;-><init>(ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;)V

    return-void
.end method
