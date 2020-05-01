.class public final Lo/YY$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YY;->K()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lo/YY;


# direct methods
.method constructor <init>(Lo/YY;)V
    .locals 0

    iput-object p1, p0, Lo/YY$ActionBar;->c:Lo/YY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 553
    iget-object p1, p0, Lo/YY$ActionBar;->c:Lo/YY;

    invoke-virtual {p1}, Lo/YY;->U_()Lo/Am;

    move-result-object p1

    iget-object v0, p0, Lo/YY$ActionBar;->c:Lo/YY;

    invoke-static {v0}, Lo/YY;->o(Lo/YY;)Lo/BC;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileDetailsFragment$createDeleteDialogListener$1$1;-><init>(Lo/YY$ActionBar;I)V

    check-cast v1, Lo/alN;

    invoke-static {p1, v0, v1}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method
