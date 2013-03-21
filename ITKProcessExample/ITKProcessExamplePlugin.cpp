// /////////////////////////////////////////////////////////////////
// Generated by dtkPluginGenerator
// /////////////////////////////////////////////////////////////////

#include "ITKProcessExample.h"
#include "ITKProcessExamplePlugin.h"
#include "ITKProcessExampleToolBox.h"
#include "ITKProcessExampleDefinitions.h"

#include <dtkLog/dtkLog.h>

// /////////////////////////////////////////////////////////////////
// ITKProcessExamplePluginPrivate
// /////////////////////////////////////////////////////////////////

class ITKProcessExamplePluginPrivate
{
public:
    // Class variables go here.
};

// /////////////////////////////////////////////////////////////////
// ITKProcessExamplePlugin
// /////////////////////////////////////////////////////////////////

ITKProcessExamplePlugin::ITKProcessExamplePlugin(QObject *parent) : dtkPlugin(parent), d(new ITKProcessExamplePluginPrivate)
{

}

ITKProcessExamplePlugin::~ITKProcessExamplePlugin(void)
{
    delete d;

    d = NULL;
}

bool ITKProcessExamplePlugin::initialize(void)
{
    if(!ITKProcessExample::registered())
        dtkWarn() << "Unable to register ITKProcessExample type";

    if(!ITKProcessExampleToolBox::registered())
        dtkWarn() << "Unable to register ITKProcessExample toolbox";

    return true;
}

bool ITKProcessExamplePlugin::uninitialize(void)
{
    return true;
}

QString ITKProcessExamplePlugin::name(void) const
{
    return "ITKProcessExamplePlugin";
}

QString ITKProcessExamplePlugin::contact(void) const
{
    return QString::fromUtf8("Clément Philipot clement.philipot@inria.fr");
}

QString ITKProcessExamplePlugin::version(void) const
{
    return PLUGIN_VERSION;
}

QString ITKProcessExamplePlugin::description(void) const
{
    return "ITK GaussianBlur Filter Example Plugin";
}

QStringList ITKProcessExamplePlugin::tags(void) const
{
    return QStringList() << "ITK" << "process" << "gaussianblur" << "filerexample" << "preprocessing";
}

QStringList ITKProcessExamplePlugin::types(void) const
{
    return QStringList() << "ITKProcessExample";
}

Q_EXPORT_PLUGIN2(ITKProcessExamplePlugin, ITKProcessExamplePlugin)