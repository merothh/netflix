.class public Lo/abl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final b:Lo/abl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/abl;

    invoke-direct {v0}, Lo/abl;-><init>()V

    sput-object v0, Lo/abl;->b:Lo/abl;

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

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/ui/settings/SettingsFragment;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method
