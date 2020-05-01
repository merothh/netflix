.class public Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;
.super Landroid/preference/DialogPreference;
.source "BandwidthPreferenceDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_bw"


# instance fields
.field private getmTextUnlimitedDetail:Landroid/widget/TextView;

.field private mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

.field private mRbGroupHigh:Landroid/widget/RelativeLayout;

.field private mRbGroupLow:Landroid/widget/RelativeLayout;

.field private mRbGroupMedium:Landroid/widget/RelativeLayout;

.field private mRbGroupOff:Landroid/widget/RelativeLayout;

.field private mRbGroupUnlimited:Landroid/widget/RelativeLayout;

.field private mRbHigh:Landroid/widget/RadioButton;

.field private mRbLow:Landroid/widget/RadioButton;

.field private mRbMedium:Landroid/widget/RadioButton;

.field private mRbOff:Landroid/widget/RadioButton;

.field private mRbUnlimited:Landroid/widget/RadioButton;

.field private mTextHigh:Landroid/widget/TextView;

.field private mTextHighDetail:Landroid/widget/TextView;

.field private mTextLow:Landroid/widget/TextView;

.field private mTextLowDetail:Landroid/widget/TextView;

.field private mTextMedium:Landroid/widget/TextView;

.field private mTextMediumDetail:Landroid/widget/TextView;

.field private mTextOff:Landroid/widget/TextView;

.field private mTextOffDetail:Landroid/widget/TextView;

.field private mTextUnlimited:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->setPersistent(Z)V

    const v0, 0x7f0300e3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->setDialogLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->unselectManualChoices()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->enableManualViews(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->selectManualChoice(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->isAutoSelectorViewOn()Z

    move-result v0

    return v0
.end method

.method private enableManualViews(Z)V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOff:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOffDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLow:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLowDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMedium:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMediumDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHigh:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHighDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextUnlimited:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getmTextUnlimitedDetail:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private getSelectedManualBwChoice()Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->OFF:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->MEDIUM:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->HIGH:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->UNLIMITED:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->LOW:Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    goto :goto_0
.end method

.method private initClickListeners()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupOff:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupLow:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupMedium:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupHigh:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupUnlimited:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$DataSelectorViewListener;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    new-instance v1, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$1;-><init>(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initViews(Landroid/view/View;ZI)V
    .locals 1

    const v0, 0x7f0f02f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    const v0, 0x7f0f02fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    const v0, 0x7f0f02fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    const v0, 0x7f0f0302

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    const v0, 0x7f0f0306

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    const v0, 0x7f0f02f7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOff:Landroid/widget/TextView;

    const v0, 0x7f0f02f8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextOffDetail:Landroid/widget/TextView;

    const v0, 0x7f0f02fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLow:Landroid/widget/TextView;

    const v0, 0x7f0f02fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextLowDetail:Landroid/widget/TextView;

    const v0, 0x7f0f02ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMedium:Landroid/widget/TextView;

    const v0, 0x7f0f0300

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextMediumDetail:Landroid/widget/TextView;

    const v0, 0x7f0f0303

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHigh:Landroid/widget/TextView;

    const v0, 0x7f0f0304

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextHighDetail:Landroid/widget/TextView;

    const v0, 0x7f0f0307

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mTextUnlimited:Landroid/widget/TextView;

    const v0, 0x7f0f0308

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getmTextUnlimitedDetail:Landroid/widget/TextView;

    const v0, 0x7f0f02f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupOff:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f02f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupLow:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f02fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupMedium:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0301

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupHigh:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f0305

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbGroupUnlimited:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f02f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->enableManualViews(Z)V

    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->create(I)Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->selectManualChoice(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutoSelectorViewOn()Z
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mBandwidthControlAuto:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    return v0
.end method

.method private notifyCaller()V
    .locals 3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$BandwidthSavingCallback;->onBandwidthSettingsDone(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "nf_bw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyCaller: no callback interface!! activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectManualChoice(Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$2;->$SwitchMap$com$netflix$mediaclient$ui$bandwidthsetting$BandwidthPreferenceDialog$ManualBwChoice:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private unselectManualChoices()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbOff:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbLow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbMedium:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbHigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->mRbUnlimited:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected dismissDialog()V
    .locals 2

    const-string/jumbo v0, "nf_bw"

    const-string/jumbo v1, "dismissing bw dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onBindDialogView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->isAutomaticOn(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->getManualChoice(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->initViews(Landroid/view/View;ZI)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->initClickListeners()V

    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_bw"

    const-string/jumbo v1, "onDialogClosed :%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->isAutoSelectorViewOn()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->getSelectedManualBwChoice()Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog$ManualBwChoice;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthUtility;->saveUserSelections(Landroid/content/Context;Ljava/lang/Boolean;I)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/bandwidthsetting/BandwidthPreferenceDialog;->notifyCaller()V

    :cond_1
    return-void
.end method
