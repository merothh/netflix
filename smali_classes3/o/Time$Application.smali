.class final Lo/Time$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Time;->a(Lo/GraphicsOperations;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Time;

.field final synthetic e:Lo/GraphicsOperations;


# direct methods
.method constructor <init>(Lo/Time;Lo/GraphicsOperations;)V
    .locals 0

    iput-object p1, p0, Lo/Time$Application;->b:Lo/Time;

    iput-object p2, p0, Lo/Time$Application;->e:Lo/GraphicsOperations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    .line 29
    iget-object v1, p0, Lo/Time$Application;->b:Lo/Time;

    invoke-static {v1}, Lo/Time;->e(Lo/Time;)Lo/DateUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/DateUtils;->i()Lo/BidiFormatter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object v0, p0, Lo/Time$Application;->b:Lo/Time;

    invoke-virtual {v0}, Lo/Time;->d()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lo/Time$Application;->b:Lo/Time;

    invoke-static {v1}, Lo/Time;->e(Lo/Time;)Lo/DateUtils;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lo/DateUtils;->a()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    aget-object p2, v1, p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object p2, p0, Lo/Time$Application;->e:Lo/GraphicsOperations;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lo/GraphicsOperations;->c()V

    .line 32
    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
