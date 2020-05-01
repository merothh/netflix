.class public Lo/Runtime;
.super Lo/RuntimePermission;
.source ""


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field c:I

.field private d:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lo/RuntimePermission;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lo/Runtime;
    .locals 3

    .line 38
    new-instance v0, Lo/Runtime;

    invoke-direct {v0}, Lo/Runtime;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 41
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Lo/Runtime;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private b()Landroidx/preference/ListPreference;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lo/Runtime;->a()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method public b(Z)V
    .locals 2

    .line 109
    invoke-direct {p0}, Lo/Runtime;->b()Landroidx/preference/ListPreference;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 110
    iget p1, p0, Lo/Runtime;->c:I

    if-ltz p1, :cond_0

    .line 111
    iget-object v1, p0, Lo/Runtime;->d:[Ljava/lang/CharSequence;

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected d(Lo/PendingIntent$Activity;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lo/RuntimePermission;->d(Lo/PendingIntent$Activity;)V

    .line 83
    iget-object v0, p0, Lo/Runtime;->a:[Ljava/lang/CharSequence;

    iget v1, p0, Lo/Runtime;->c:I

    new-instance v2, Lo/Runtime$5;

    invoke-direct {v2, p0}, Lo/Runtime$5;-><init>(Lo/Runtime;)V

    invoke-virtual {p1, v0, v1, v2}, Lo/PendingIntent$Activity;->c([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0, v0}, Lo/PendingIntent$Activity;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lo/PendingIntent$Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Lo/RuntimePermission;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0}, Lo/Runtime;->b()Landroidx/preference/ListPreference;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->k()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->e(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/Runtime;->c:I

    .line 58
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->k()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/Runtime;->a:[Ljava/lang/CharSequence;

    .line 59
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->m()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/Runtime;->d:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const-string v1, "ListPreferenceDialogFragment.index"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/Runtime;->c:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/Runtime;->a:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lo/Runtime;->d:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lo/RuntimePermission;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    iget v0, p0, Lo/Runtime;->c:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lo/Runtime;->a:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lo/Runtime;->d:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method
