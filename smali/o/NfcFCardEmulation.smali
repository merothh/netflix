.class public final Lo/NfcFCardEmulation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ajS;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/ajS<",
        "Lo/OffHostApduService;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/NfcManager;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lo/NfcAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/NfcAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/NfcManager;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lo/NfcFCardEmulation;->c:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lo/NfcFCardEmulation;->e:Ljavax/inject/Provider;

    .line 26
    iput-object p3, p0, Lo/NfcFCardEmulation;->a:Ljavax/inject/Provider;

    return-void
.end method

.method public static e(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lo/NfcFCardEmulation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/NfcAdapter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lo/NfcManager;",
            ">;)",
            "Lo/NfcFCardEmulation;"
        }
    .end annotation

    .line 37
    new-instance v0, Lo/NfcFCardEmulation;

    invoke-direct {v0, p0, p1, p2}, Lo/NfcFCardEmulation;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public e()Lo/OffHostApduService;
    .locals 4

    .line 31
    new-instance v0, Lo/OffHostApduService;

    iget-object v1, p0, Lo/NfcFCardEmulation;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lo/NfcFCardEmulation;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/NfcAdapter;

    iget-object v3, p0, Lo/NfcFCardEmulation;->a:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/NfcManager;

    invoke-direct {v0, v1, v2, v3}, Lo/OffHostApduService;-><init>(Landroid/content/Context;Lo/NfcAdapter;Lo/NfcManager;)V

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lo/NfcFCardEmulation;->e()Lo/OffHostApduService;

    move-result-object v0

    return-object v0
.end method
