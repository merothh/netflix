.class public Lo/Ms;
.super Lo/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ms$ActionBar;
    }
.end annotation


# instance fields
.field protected final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Lo/WebChromeClient;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/Ms;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Lo/Mm;)Lo/Ms;
    .locals 5

    .line 45
    new-instance v0, Lo/Ms;

    invoke-direct {v0}, Lo/Ms;-><init>()V

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-virtual {p0}, Lo/Mm;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lo/Mm;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lo/Mm;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lo/Mm;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lo/Mm;->b()[Landroid/util/Pair;

    move-result-object v2

    array-length v2, v2

    const-string v3, "buttonCount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lo/Mm;->b()[Landroid/util/Pair;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buttonName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lo/Mm;->b()[Landroid/util/Pair;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buttonCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lo/Mm;->b()[Landroid/util/Pair;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, v1}, Lo/Ms;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public isLoadingData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 67
    invoke-virtual {p0}, Lo/Ms;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lo/Ms;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lo/Ms;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "buttonCount"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 70
    new-array v3, v1, [Ljava/lang/String;

    .line 71
    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lo/Ms;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buttonName"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 74
    invoke-virtual {p0}, Lo/Ms;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buttonCode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string v5, "com.netflix.mediaclient.intent.action.MDX_ACTION_DIALOGRESP"

    .line 78
    new-instance v6, Lo/PendingIntent$Activity;

    invoke-virtual {p0}, Lo/Ms;->getActivity()Lo/Serializable;

    move-result-object v7

    sget v8, Lcom/netflix/mediaclient/ui/R$SharedElementCallback;->a:I

    invoke-direct {v6, v7, v8}, Lo/PendingIntent$Activity;-><init>(Landroid/content/Context;I)V

    const-string v7, "mdxui"

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {v6, p1}, Lo/PendingIntent$Activity;->d(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    goto :goto_1

    :cond_1
    const-string p1, "No title..."

    .line 83
    invoke-static {v7, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {v6, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;)Lo/PendingIntent$Activity;

    goto :goto_2

    :cond_2
    const-string p1, "No message..."

    .line 89
    invoke-static {v7, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p1, 0x1

    if-ge v1, p1, :cond_3

    const-string v0, "We are expecting at least one button!"

    .line 93
    invoke-static {v7, v0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lez v1, :cond_4

    .line 97
    aget-object v0, v3, v2

    new-instance v2, Lo/Ms$4;

    invoke-direct {v2, p0, v5, v4}, Lo/Ms$4;-><init>(Lo/Ms;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v6, v0, v2}, Lo/PendingIntent$Activity;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    :cond_4
    if-le v1, p1, :cond_5

    .line 122
    aget-object p1, v3, p1

    new-instance v0, Lo/Ms$3;

    invoke-direct {v0, p0, v5, v4}, Lo/Ms$3;-><init>(Lo/Ms;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    :cond_5
    const/4 p1, 0x2

    if-le v1, p1, :cond_6

    .line 147
    aget-object p1, v3, p1

    new-instance v0, Lo/Ms$2;

    invoke-direct {v0, p0, v5, v4}, Lo/Ms$2;-><init>(Lo/Ms;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Lo/PendingIntent$Activity;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    :cond_6
    const/4 p1, 0x3

    if-le v1, p1, :cond_7

    const-string p1, "We can support up to 3 buttons!"

    .line 172
    invoke-static {v7, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_7
    invoke-virtual {v6}, Lo/PendingIntent$Activity;->a()Lo/PendingIntent;

    move-result-object p1

    return-object p1
.end method
