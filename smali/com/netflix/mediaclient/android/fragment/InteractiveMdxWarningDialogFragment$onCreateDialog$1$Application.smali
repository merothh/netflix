.class final Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1;->d(Lo/Serializable;Landroid/os/Bundle;)Lo/akj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final b:Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1$Application;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1$Application;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1$Application;->b:Lcom/netflix/mediaclient/android/fragment/InteractiveMdxWarningDialogFragment$onCreateDialog$1$Application;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 56
    sget-object p1, Lo/WebIconDatabase;->d:Lo/WebIconDatabase$ActionBar;

    check-cast p1, Lo/MessagePdu;

    return-void
.end method
