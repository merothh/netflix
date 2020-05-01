.class Lo/Kh$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DatePickerCalendarDelegate$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Kh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Kh;


# direct methods
.method constructor <init>(Lo/Kh;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/Kh$2;->d:Lo/Kh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/Kh$2;->d:Lo/Kh;

    iget-object v0, v0, Lo/Kh;->k:Lo/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Kh$2;->d:Lo/Kh;

    iget-object v0, v0, Lo/Kh;->b:Lo/KL;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lo/Kh$2;->d:Lo/Kh;

    iget-object v0, v0, Lo/Kh;->b:Lo/KL;

    iget-object v1, p0, Lo/Kh$2;->d:Lo/Kh;

    iget-object v1, v1, Lo/Kh;->k:Lo/EditText;

    invoke-virtual {v1}, Lo/EditText;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/KL;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
