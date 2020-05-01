.class public Lo/adf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final b:Lo/adf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/adf;

    invoke-direct {v0}, Lo/adf;-><init>()V

    sput-object v0, Lo/adf;->b:Lo/adf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/voip/VoIpModuleInstallScreen;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method
